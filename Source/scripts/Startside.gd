extends Node2D


func _on_Button_pressed():
	Scenetransition.change_scene("res://Scenes/Main world.tscn")


func _on_Button2_pressed():
	get_tree().quit()


func _on_Button3_pressed():
	Scenetransition.change_scene("res://Scenes/Network.tscn")
