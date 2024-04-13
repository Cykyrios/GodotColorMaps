class_name ColorMapD3RdBu
extends ColorMap

## D3 RdBu
##
## Source: https://github.com/d3/d3-scale-chromatic/blob/main/src/diverging/RdBu.js

func _init() -> void:
	var samples := PackedColorArray([
		Color.hex(0x67001fff),
		Color.hex(0xb2182bff),
		Color.hex(0xd6604dff),
		Color.hex(0xf4a582ff),
		Color.hex(0xfddbc7ff),
		Color.hex(0xf7f7f7ff),
		Color.hex(0xd1e5f0ff),
		Color.hex(0x92c5deff),
		Color.hex(0x4393c3ff),
		Color.hex(0x2166acff),
		Color.hex(0x053061ff),
	])
	var sample_count := samples.size() - 1

	var count := 256
	var _discard := colors.resize(count)
	for i in count:
		if i > 220:
			pass
		if i == count - 1:
			colors[i] = samples[-1]
		else:
			var float_index := i * sample_count / (count as float)
			var index := int(float_index)
			var weight := float_index - index
			colors[i] = samples[index].lerp(samples[index + 1], weight)
	underflow = Color(0.3, 0.3, 0.3)
	overflow = Color(0.7, 0.7, 0.7)
	super()
