extends Panel



func _on_skrald1_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.name == "Spand1":
		Global.affald_sortering_point += 1
		print (Global.affald_sortering_point)
		queue_free()



func _on_Skrald1_gui_input(event: InputEvent) -> void:
	if event is InputEventScreenDrag:
		rect_position += event.relative
