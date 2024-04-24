extends Panel



func _on_Skrald_7_gui_input(event: InputEvent) -> void:
	if event is InputEventScreenDrag:
		rect_position += event.relative



func _on_Skrald_7_area_entered(area):
	if area.name == "Skraldespand_bio":
		Global.affald_sortering_point += 1
		print (Global.affald_sortering_point)
		queue_free()
