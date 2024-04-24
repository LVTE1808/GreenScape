extends Node2D


export var movement_speed = 10
export var moving = false

var destination_position = $Position2D.global_position

func first_location(delta):
	if moving:
		$EcoGuide.global_position = $EcoGuide.global_position.move_toward(destination_position, delta * movement_speed)
	if $EcoGuide.global_position == destination_position:
		moving = false



func _process(delta):
	first_location(delta)
