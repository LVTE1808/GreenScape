extends Panel




func _on_Skrald_3_gui_input(event: InputEvent) -> void:
	if event is InputEventScreenDrag:
		rect_position += event.relative


func _on_Skrald_3_area_entered(area):
	if area.name == "Spand 3":
		queue_free()
		Global.affald_sortering_point += 1
		print(Global.affald_sortering_point)

