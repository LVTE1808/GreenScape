extends Node2D

var movement_speed = 250


var destination_position1
var destination_position2
var destination_position3
var destination_position4
var destination_position5
var eco_guide_char
onready var dialog = preload("res://dialog.tres")


func eco():
	pass

func _ready():


	eco_guide_char = $EcoGuideChar
	destination_position1 = $Pos1.global_position
	destination_position2 = $Pos2.global_position
	destination_position3 = $Pos3.global_position
	destination_position4 = $Pos4.global_position
	destination_position5 = $Pos5.global_position


func first_location(delta):
	if Global.moving == true and Global.location == 1:
		eco_guide_char.global_position = eco_guide_char.global_position.move_toward(destination_position1, delta * movement_speed)
	if eco_guide_char.global_position == destination_position1 and Global.location == 1:
		Global.location += 1
		print(Global.location)
	if Global.moving == true and Global.location == 5:
		DialogueManager.show_example_dialogue_balloon("affaldssortering_slut", dialog)
		Global.affaldssortering_faerdig = false
		eco_guide_char.global_position = eco_guide_char.global_position.move_toward(destination_position1, delta * movement_speed)
	if eco_guide_char.global_position == destination_position1 and Global.location == 5:
		Global.location += 1
	if Global.location == 6:
		eco_guide_char.global_position = eco_guide_char.global_position.move_toward(destination_position5, delta * movement_speed)
	if Global.location == 6 and eco_guide_char.global_position == destination_position5:
		DialogueManager.show_example_dialogue_balloon("genbug_start", dialog)
		Global.location += 1
	if Global.location == 8:
		DialogueManager.show_example_dialogue_balloon("genbrug_slut", dialog)
		Global.location += 1

func second_location(delta):
	if Global.moving == true and Global.location == 2:
		eco_guide_char.global_position = eco_guide_char.global_position.move_toward(destination_position2, delta * movement_speed)
	if eco_guide_char.global_position == destination_position2 and Global.location == 2:
		Global.moving = false
		Global.location += 1
		print(Global.location)


func third_location(delta):
	if Global.location == 3:
		eco_guide_char.global_position = eco_guide_char.global_position.move_toward(destination_position3, delta * movement_speed)
	if eco_guide_char.global_position == destination_position3 and Global.location == 3:
		Global.location += 1
		Global.moving = false
		print(Global.location)


func _process(delta):
	first_location(delta)
	second_location(delta)
	third_location(delta)


func _on_Detection_body_entered(body):
	if body.name == "Player" and Global.samtaler_faerdig == 0:
		DialogueManager.show_example_dialogue_balloon("introduktion1_til_spil", dialog)
		Global.samtaler_faerdig += 1
		Global.moving = true
	if body.name == "Player" and Global.location == 5:
		Global.moving = true
	
