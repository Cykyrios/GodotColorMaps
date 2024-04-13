class_name ColorMapD3Blues
extends ColorMap

## D3 Spectral
##
## Source: https://github.com/d3/d3-scale-chromatic/blob/main/src/sequential-single/Blues.js

func _init(color_steps := 0) -> void:
	var samples := PackedColorArray([
		Color.hex(0xf7fbffff),
		Color.hex(0xdeebf7ff),
		Color.hex(0xc6dbefff),
		Color.hex(0x9ecae1ff),
		Color.hex(0x6baed6ff),
		Color.hex(0x4292c6ff),
		Color.hex(0x2171b5ff),
		Color.hex(0x08519cff),
		Color.hex(0x08306bff),
	])
	_from_color_samples(samples, color_steps, Color(0.3, 0.3, 0.3), Color(0.7, 0.7, 0.7))
	super(color_steps)
