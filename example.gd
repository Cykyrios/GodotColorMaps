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
		draw_color_map(color_maps[i][1] as ColorMap, color_maps[i][2] as ColorMap, i)


func add_color_map(text: String, color_map: ColorMap, steps := 11) -> void:
	var label := Label.new()
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.text = text
	vbox.add_child(label)
	var stepped_color_map := ColorMap.new()
	stepped_color_map.colors = color_map.colors
	stepped_color_map.steps = steps
	stepped_color_map.discrete = color_map.discrete
	color_maps.append([text, color_map, stepped_color_map])


func draw_color_map(original_color_map: ColorMap, stepped_color_map: ColorMap, offset: int) -> void:
	var point_count := 256
	var overflow_count := 10
	var offset_h := 140
	var offset_v := 32
	var length := point_count + 2 * overflow_count + 20
	var height := 33
	var thickness := 20
	var color_map: ColorMap = null
	for i in 2:
		color_map = original_color_map if i == 0 else stepped_color_map
		var points := PackedVector2Array()
		var colors := PackedColorArray()
		for j in point_count + 2 * overflow_count:
			var _discard := points.append(Vector2(offset_h + j + length * i,
					offset_v + offset * height))
		var normalized_color_data: Array[float] = []
		for j in points.size():
			normalized_color_data.append(color_map.get_normalized_value(
					j - overflow_count, 0, point_count - 1))
		colors = normalized_color_data.map(color_map.get_color)
		draw_polyline_colors(points, colors, thickness)
