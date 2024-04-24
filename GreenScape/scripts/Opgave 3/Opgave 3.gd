extends Control

onready var slut = get_node("Player/Slut")


func _process(delta):
	if get_node("Planter/Potteplante5").visible == true:
		if get_node("Planter/Potteplante6").visible == true:
				if get_node("Planter/Potteplante7").visible == true:
					if get_node("Planter/Plante1/Potteplante1").visible == true:
						if get_node("Planter/Plante2/Potteplante2").visible == true:
							if get_node("Planter/Plante3/Potteplante3").visible == true:
								if get_node("Planter/Plante4/Potteplante4").visible == true:
									slut.visible = true

func _on_Spil_pressed():
	Scenetransition.change_scene("res://Scenes/Opgave 3.tscn")

func _on_Videre_pressed():
	Global.checkpoint += 3
	print(Global.checkpoint)
	Scenetransition.change_scene("res://Scenes/Main world.tscn")

