extends CanvasLayer


func _ready():
	$ColorRect/GreenscapeLogoUdenPotte/Logo.play("Plante spin")

func change_scene(target: String) -> void:
	get_node("ColorRect").visible = true
	$AnimationPlayer.play('Dissolve')
	yield($AnimationPlayer, "animation_finished")
	get_tree().change_scene(target)
	$AnimationPlayer.play_backwards('Dissolve')
	get_node("ColorRect").visible = false
	

