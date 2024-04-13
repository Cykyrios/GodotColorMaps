class_name ColorMapD3Category10
extends ColorMap

## D3 Category 10
##
## Source: https://github.com/d3/d3-scale-chromatic/blob/main/src/categorical/category10.js

func _init() -> void:
	discrete = true
	var samples := PackedColorArray([
		Color.hex(0x1f77b4ff),
		Color.hex(0xff7f0eff),
		Color.hex(0x2ca02cff),
		Color.hex(0xd62728ff),
		Color.hex(0x9467bdff),
		Color.hex(0x8c564bff),
		Color.hex(0xe377c2ff),
		Color.hex(0x7f7f7fff),
		Color.hex(0xbcbd22ff),
		Color.hex(0x17becfff),
	])
	steps = samples.size()
	_from_color_samples(samples, steps, Color(0.3, 0.3, 0.3), Color(0.7, 0.7, 0.7))
	super(steps)
