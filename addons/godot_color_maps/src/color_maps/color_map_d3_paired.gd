class_name ColorMapD3Paired
extends ColorMap

## D3 Paired
##
## Source: https://github.com/d3/d3-scale-chromatic/blob/main/src/categorical/Paired.js

func _init() -> void:
	discrete = true
	var samples := PackedColorArray([
		Color.hex(0xa6cee3ff),
		Color.hex(0x1f78b4ff),
		Color.hex(0xb2df8aff),
		Color.hex(0x33a02cff),
		Color.hex(0xfb9a99ff),
		Color.hex(0xe31a1cff),
		Color.hex(0xfdbf6fff),
		Color.hex(0xff7f00ff),
		Color.hex(0xcab2d6ff),
		Color.hex(0x6a3d9aff),
		Color.hex(0xffff99ff),
		Color.hex(0xb15928ff),
	])
	steps = samples.size()
	_from_color_samples(samples, steps, Color(0.3, 0.3, 0.3), Color(0.7, 0.7, 0.7))
	super(steps)
