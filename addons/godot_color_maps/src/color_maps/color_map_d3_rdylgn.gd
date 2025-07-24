class_name ColorMapD3RdYlGn
extends ColorMap

## D3 RdYlGn
##
## Source: https://github.com/d3/d3-scale-chromatic/blob/main/src/diverging/RdYlGn.js

func _init(color_steps := 0) -> void:
	var samples := PackedColorArray([
		Color.hex(0xa50026ff),
		Color.hex(0xd73027ff),
		Color.hex(0xf46d43ff),
		Color.hex(0xfdae61ff),
		Color.hex(0xfee08bff),
		Color.hex(0xffffbfff),
		Color.hex(0xd9ef8bff),
		Color.hex(0xa6d96aff),
		Color.hex(0x66bd63ff),
		Color.hex(0x1a9850ff),
		Color.hex(0x006837ff),
	])
	_from_color_samples(samples, color_steps, Color(0.3, 0.3, 0.3), Color(0.7, 0.7, 0.7))
	super(color_steps)
