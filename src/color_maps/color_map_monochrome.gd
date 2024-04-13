class_name ColorMapMonochrome
extends ColorMap


func _init(color_steps := 0) -> void:
	var count := 256
	var _discard := colors.resize(count)
	for i in count:
		colors[i] = Color.from_hsv(0, 0, remap(i, 0, 255, 0, 1))
	underflow = Color(0.3, 0.3, 0.3)
	overflow = Color(0.7, 0.7, 0.7)
	super(color_steps)
