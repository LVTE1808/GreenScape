extends Control

func _process(delta):
	if Global.affald_sortering_point == 5:
		Global.affald_sortering_point -= 5
		get_node("Spil færdig").visible = true
		print(Global.affald_sortering_point)


func _on_Videre_pressed():
		Global.checkpoint += 1
		get_node("Spil færdig").visible = false
		Scenetransition.change_scene("res://Scenes/Main world.tscn")

func _on_Spil_igen_pressed():
	get_node("Spil færdig").visible = false
	Scenetransition.change_scene("res://Scenes/affald sortering.tscn")
