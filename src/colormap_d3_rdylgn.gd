class_name ColorMapD3RdYlGn
extends ColorMap

## D3 RdYlGn
##
## Source: https://github.com/d3/d3-scale-chromatic/blob/main/src/diverging/RdYlGn.js

func _init() -> void:
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
	var sample_count := samples.size() - 1

	var count := 256
	var _discard := colors.resize(count)
	for i in count:
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
