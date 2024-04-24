extends Panel



func _on_Skrald_2_gui_input(event: InputEvent) -> void:
	if event is InputEventScreenDrag:
		rect_position += event.relative

func _on_skrald2_area_entered(area):
	if area.name == "Spand2":
		queue_free()
		Global.affald_sortering_point += 1
		print (Global.affald_sortering_point)
