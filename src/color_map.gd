class_name ColorMap
extends RefCounted

## A color map for data visualization
##
## This class provides a list of colors for data visualization within a specified range, as well as
## underflow and overflow colors for data outside this range.[br]
## Override the [member colors] array as well as the [member underflow] and [member overflow] colors
## as needed, and remember to include [code]validate()[/code] at the end.[br]
## [br]
## Example with a color map containing only 3 colors, red, green and blue:
## [codeblock]
## func _init() -> void:
##     colors = [Color(1, 0, 0), Color(0, 1, 0), Color(0, 0, 1)]
##     validate()
## [/codeblock]


const UNDERFLOW := Color(0.3, 0.3, 0.3)
const OVERFLOW := Color(0.7, 0.7, 0.7)

## Color used for values below 0.
var underflow := UNDERFLOW
## Color used for values above 1.
var overflow := OVERFLOW
## List of colors for this color map.
var colors: Array[Color] = [Color(1, 0, 0), Color(0, 1, 0), Color(0, 0, 1)]:
	set(color_array):
		colors = color_array
		validate()
## Number of steps for non-smooth color maps
var steps := 0:
	set(value):
		steps = value
		if steps > 0:
			var stepped_colors: Array[Color] = []
			for i in steps:
				var step := _color_count as float / steps
				stepped_colors.append(get_color(i * (step + step / maxf(steps - 1, 1)) / _color_count))
			colors = stepped_colors
		validate()
## True for discrete color maps (color sets)
var discrete := false

var _color_count := 0


func _init(color_steps := 0) -> void:
	validate()
	steps = color_steps


static func create_from_color_samples(
	samples: PackedColorArray, color_steps := 0, underflow_color := ColorMap.UNDERFLOW,
	overflow_color := ColorMap.OVERFLOW
) -> ColorMap:
	if samples.size() == 0:
		var _add := samples.append(Color.BLACK)
	if samples.size() == 1:
		var _add := samples.append(samples[0])
	var color_map := ColorMap.new()
	color_map._from_color_samples(samples, color_steps, underflow_color, overflow_color)
	return color_map


## This function returns a color for the given [param normalized_value], between 0 and 1 inclusive.
## Values below 0 or above 1 will return the [member underflow] or [member overflow] colors, respectively.
func get_color(normalized_value: float) -> Color:
	if normalized_value < 0:
		return underflow
	if normalized_value > 1:
		return overflow
	if is_nan(normalized_value):
		return underflow
	if steps == 0:
		return colors[roundi(remap(normalized_value, 0, 1, 0, _color_count - 1))]
	else:
		var offset := 0.5 / steps
		var test := roundi(remap(normalized_value, 0 + offset, 1 - offset, 0, _color_count - 1))
		if test < 0:
			return colors[0]
		elif test >= _color_count:
			return colors[-1]
		return colors[test]


## This function returns a normalized value given a [param value] and the minimum and maximum
## values [param min_value] and [param max_value]. This can be used with [method get_color].
func get_normalized_value(value: float, min_value: float, max_value: float) -> float:
	return remap(value, min_value, max_value, 0, 1)


func validate() -> void:
	_color_count = colors.size()


func _from_color_samples(
	samples: PackedColorArray, color_steps: int, underflow_color: Color, overflow_color: Color
) -> void:
	var sample_count := samples.size() - 1
	var count := 256
	var _discard := colors.resize(count)
	for i in count:
		if i == count - 1:
			colors[i] = samples[-1]
		else:
			var float_index := i * sample_count / (count as float)
			var index := int(float_index)
			var weight := float_index - index
			colors[i] = samples[index].lerp(samples[index + 1], weight)
	underflow = underflow_color
	overflow = overflow_color
	validate()
	steps = color_steps
	if discrete:
		colors.assign(samples)
