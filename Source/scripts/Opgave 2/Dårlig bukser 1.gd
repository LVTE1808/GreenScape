extends Panel




func _on_Drlig_bukser_1_gui_input(event):
	if event is InputEventScreenDrag:
		rect_position += event.relative



func _on_Drlig_bukser_1_area_entered(area):
	if area.name == "Tekstil":
		Global.Tekstil += 1
		queue_free()
