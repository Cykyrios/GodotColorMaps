extends MarginContainer


var color_maps: Array = []

@onready var vbox: VBoxContainer = %VBoxContainer


func _ready() -> void:
	add_color_map("Viridis", ColorMapViridis.new())
	add_color_map("Magma", ColorMapMagma.new())
	add_color_map("Inferno", ColorMapInferno.new())
	add_color_map("Plasma", ColorMapPlasma.new())
	add_color_map("Turbo", ColorMapTurbo.new())
	add_color_map("Jet", ColorMapJet.new())
	add_color_map("Monochrome", ColorMapMonochrome.new())
	add_color_map("D3 RdYlGn", ColorMapD3RdYlGn.new())
	add_color_map("D3 RdBu", ColorMapD3RdBu.new())
	add_color_map("D3 Spectral", ColorMapD3Spectral.new())
	queue_redraw()


func _draw() -> void:
	draw_rect(Rect2(0, 0, 1920, 1080), Color(0.4, 0.4, 0.4), true)
	for i in color_maps.size():
		draw_color_map(color_maps[i][1] as ColorMap, i)


func add_color_map(text: String, color_map: ColorMap) -> void:
	var label := Label.new()
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.text = text
	vbox.add_child(label)
	color_maps.append([text, color_map])


func draw_color_map(color_map: ColorMap, offset: int) -> void:
	var offset_h := 140
	var offset_v := 32
	var length := 300
	var height := 33
	var thickness := 20
	var divisions: Array[int] = [256, 11]
	for i in divisions.size():
		var div := divisions[i]
		var points := PackedVector2Array()
		var colors := PackedColorArray()
		for j in div:
			var _discard := points.append(Vector2(offset_h + j * 256.0 / div + length * i,
					offset_v + offset * height))
			_discard = points.append(Vector2(offset_h + (j + 1) * 256.0 / div + length * i,
					offset_v + offset * height))
			var step := 256.0 / div
			_discard = colors.append(color_map.get_color(j * (step + step / maxf(div - 1, 1)) / 256))
		draw_multiline_colors(points, colors, thickness)
