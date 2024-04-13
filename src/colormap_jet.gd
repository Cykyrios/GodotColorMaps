class_name ColorMapJet
extends ColorMap


func _init() -> void:
	var count := 256
	var _discard := colors.resize(count)
	for i in count:
		colors[i] = Color.from_hsv(remap(i, 0, 255, 240 / 360.0, 0), 1, 1)
	underflow = Color(0.3, 0.3, 0.3)
	overflow = Color(0.7, 0.7, 0.7)
	validate()
