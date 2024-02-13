extends VBoxContainer


func _ready() -> void:
	var create_label := func create_label(text: String) -> Label:
		var label := Label.new()
		label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
		label.text = text
		return label
	add_child(create_label.call("\nViridis"))
	add_child(create_label.call("Turbo"))
	add_child(create_label.call("Jet"))
	add_child(create_label.call("Monochrome"))
	queue_redraw()


func _draw() -> void:
	draw_rect(Rect2(0, 0, 1920, 1080), Color(0.5, 0.5, 0.5), true)
	draw_color_map(ColorMapViridis.new(), 0)
	draw_color_map(ColorMapTurbo.new(), 1)
	draw_color_map(ColorMapJet.new(), 2)
	draw_color_map(ColorMapMonochrome.new(), 3)


func draw_color_map(color_map: ColorMap, offset: int) -> void:
	var divisions: Array[int] = [256, 6]
	for i in divisions.size():
		var div := divisions[i]
		var points := PackedVector2Array()
		var colors := PackedColorArray()
		for j in div:
			var _discard := points.append(Vector2(120 + j * 256.0 / div + 300 * i, 40 + offset * 50))
			_discard = points.append(Vector2(120 + (j + 1) * 256.0 / div + 300 * i, 40 + offset * 50))
			var step := 256.0 / div
			_discard = colors.append(color_map.get_color(j * (step + step / maxf(div - 1, 1)) / 256))
		draw_multiline_colors(points, colors, 10)
