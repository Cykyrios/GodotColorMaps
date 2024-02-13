class_name ColorMap
extends RefCounted

## A color map for data visualization
##
## This class provides a list of colors for data visualization within a specified range, as well as
## underflow and overflow colors for data outside this range.[br]
## Override the [member colors] array as well as the [member underflow] and [member overflow] colors
## as needed, and remember to include [code]super()[/code] at the end.[br]
## [br]
## Example with a color map containing only 3 colors, red, green and blue:
## [codeblock]
## func _init() -> void:
##     colors = [Color(1, 0, 0), Color(0, 1, 0), Color(0, 0, 1)]
##     super()
## [/codeblock]


## Color used for values below 0.
var underflow := Color(0.3, 0.3, 0.3)
## Color used for values above 1.
var overflow := Color(0.7, 0.7, 0.7)
## List of colors for this color map.
var colors: Array[Color] = [Color(1, 0, 0), Color(0, 1, 0), Color(0, 0, 1)]
## Number of colors contained in the [member colors] array. Updated by calling [code]super()[/code]
## after overriding the [member colors] array.
var color_count := 0


func _init() -> void:
	color_count = colors.size()


## This function returns a color for the given [param normalized_value], between 0 and 1 inclusive.
## Values below 0 or above 1 will return the [member underflow] or [member overflow] colors, respectively.
func get_color(normalized_value: float) -> Color:
	if normalized_value < 0:
		return underflow
	if normalized_value > 1:
		return overflow
	return colors[roundi(remap(normalized_value, 0, 1, 0, color_count - 1))]


## This function returns a normalized value given a [param value] and the minimum and maximum
## values [param min_value] and [param max_value]. This can be used with [method get_color].
func get_normalized_value(value: float, min_value: float, max_value: float) -> float:
	return remap(value, min_value, max_value, 0, 1)
