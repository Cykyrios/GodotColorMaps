class_name ColorMapD3Reds
extends ColorMap

## D3 Spectral
##
## Source: https://github.com/d3/d3-scale-chromatic/blob/main/src/sequential-single/Reds.js

func _init(color_steps := 0) -> void:
	var samples := PackedColorArray([
		Color.hex(0xfff5f0ff),
		Color.hex(0xfee0d2ff),
		Color.hex(0xfcbba1ff),
		Color.hex(0xfc9272ff),
		Color.hex(0xfb6a4aff),
		Color.hex(0xef3b2cff),
		Color.hex(0xcb181dff),
		Color.hex(0xa50f15ff),
		Color.hex(0x67000dff),
	])
	_from_color_samples(samples, color_steps, Color(0.3, 0.3, 0.3), Color(0.7, 0.7, 0.7))
	super(color_steps)
