class_name ColorMapD3Spectral
extends ColorMap

## D3 Spectral
##
## Source: https://github.com/d3/d3-scale-chromatic/blob/main/src/diverging/Spectral.js

func _init() -> void:
	var samples := PackedColorArray([
		Color.hex(0x9e0142ff),
		Color.hex(0xd53e4fff),
		Color.hex(0xf46d43ff),
		Color.hex(0xfdae61ff),
		Color.hex(0xfee08bff),
		Color.hex(0xffffbfff),
		Color.hex(0xe6f598ff),
		Color.hex(0xabdda4ff),
		Color.hex(0x66c2a5ff),
		Color.hex(0x3288bdff),
		Color.hex(0x5e4fa2ff),
	])
	_from_color_samples(samples, Color(0.3, 0.3, 0.3), Color(0.7, 0.7, 0.7))
