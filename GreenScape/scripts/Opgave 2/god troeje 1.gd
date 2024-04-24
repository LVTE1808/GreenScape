extends Panel




func _on_God_trje_1_area_entered(area):
	if area.name == "Genbrug":
		Global.Tekstil += 1
		queue_free()


func _on_god_trje_1_gui_input(event: InputEvent) -> void:
	if event is InputEventScreenDrag:
		rect_position += event.relative
