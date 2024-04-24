extends Control

var color_rect 
onready var dialog = preload("res://dialog.tres")


func _ready():
	DialogueManager.show_example_dialogue_balloon("affaldssortering_start", dialog)

func _process(delta):
	if Global.affald_sortering_point == 5:
		Global.affald_sortering_point -= 5
		get_node("Spil færdig").visible = true
		print(Global.affald_sortering_point)


func _on_Videre_pressed():
		Global.checkpoint += 1
		get_node("Spil færdig").visible = false
		Global.affaldssortering_faerdig = true
		Scenetransition.change_scene("res://Scenes/Main world.tscn")
		Global.location += 1


func _on_Spil_igen_pressed():
	get_node("Spil færdig").visible = false
	Scenetransition.change_scene("res://Scenes/Affaldssortering 2.tscn")
