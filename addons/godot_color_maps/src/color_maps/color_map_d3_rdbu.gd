class_name ColorMapD3RdBu
extends ColorMap

## D3 RdBu
##
## Source: https://github.com/d3/d3-scale-chromatic/blob/main/src/diverging/RdBu.js

func _init(color_steps := 0) -> void:
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
	_from_color_samples(samples, color_steps, Color(0.3, 0.3, 0.3), Color(0.7, 0.7, 0.7))
	super(color_steps)
