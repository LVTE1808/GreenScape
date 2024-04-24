extends Control


var color_rect



func _ready():
	color_rect = get_node("Opgave2")


func _process(delta):
	if Global.Tekstil == 5:
		Global.Tekstil -= 5
		color_rect.visible = true

func _on_Spil2_pressed():
	color_rect.visible = false
	Scenetransition.change_scene("res://Scenes/T¢j sortering.tscn")



func _on_Tilbage2_pressed():
	Global.checkpoint += 2
	Global.location += 1
	Scenetransition.change_scene("res://Scenes/Main world.tscn")
