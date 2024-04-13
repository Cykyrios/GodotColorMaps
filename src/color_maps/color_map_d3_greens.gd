class_name ColorMapD3Greens
extends ColorMap

## D3 Spectral
##
## Source: https://github.com/d3/d3-scale-chromatic/blob/main/src/sequential-single/Greens.js

func _init(color_steps := 0) -> void:
	var samples := PackedColorArray([
		Color.hex(0xf7fcf5ff),
		Color.hex(0xe5f5e0ff),
		Color.hex(0xc7e9c0ff),
		Color.hex(0xa1d99bff),
		Color.hex(0x74c476ff),
		Color.hex(0x41ab5dff),
		Color.hex(0x238b45ff),
		Color.hex(0x006d2cff),
		Color.hex(0x00441bff),
	])
	_from_color_samples(samples, color_steps, Color(0.3, 0.3, 0.3), Color(0.7, 0.7, 0.7))
	super(color_steps)
