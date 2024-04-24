extends Node2D

onready var color_rect = get_node("pop-up/Opgave1")
onready var color_rect_2 = get_node("pop-up/Opgave2")
onready var color_rect_3 = get_node("pop-up/Opgave3")

onready var dialog = preload("res://dialog.tres")

func _ready():
	$NPC/NPC3.play("NPC3")
	$NPC/NPC2.play("NPC2")
	$NPC/NPC1.play("NPC1")
	DialogueManager.show_example_dialogue_balloon("affaldssortering_slut", dialog)
func _process(delta):
	if Global.checkpoint == 3:
		$Player.position.x = 3585
		$Player.position.y = 120
		Global.checkpoint -= 3

func _on_Area2D_body_entered(body):
	color_rect.visible = true
	Global.speed = 0

func _on_Tilbage_pressed():
	color_rect.visible = false
	Global.speed = 25

func _on_Spil_pressed():
	Scenetransition.change_scene("res://Scenes/affald sortering.tscn")
	Global.speed = 25
	color_rect.visible = false

func _on_Spil2_pressed():
	Scenetransition.change_scene("res://Scenes/Tj sortering.tscn")
	Global.speed = 25
	color_rect.visible = false

func _on_Tilbage2_pressed():
	color_rect_2.visible = false
	Global.speed = 25


func _on_Opgave_2_body_entered(body):
	color_rect_2.visible = true
	Global.speed = 0


func _on_Opgave3_body_entered(body):
	color_rect_3.visible = true
	Global.speed = 0


func _on_Tilbage3_pressed():
	color_rect_3.visible = false
	Global.speed = 25

func _on_Spil3_pressed():
	Scenetransition.change_scene("res://Scenes/Opgave 3.tscn")
	Global.speed = 25
	color_rect_3.visible = false


func _on_Speechbubble1_body_entered(body):
	if body.name == "Player":
		get_node("NPC/NPC3/Speechbubble1/Speechbubble1").visible = true

func _on_Speechbubble1_body_exited(body):
	if body.name == "Player":
		get_node("NPC/NPC3/Speechbubble1/Speechbubble1").visible = false

func _on_Speechbubble3_body_entered(body):
	if body.name == "Player":
		get_node("NPC/NPC1/Speechbubble3/Speechbubble2").visible = true

func _on_Speechbubble3_body_exited(body):
	if body.name == "Player":
		get_node("NPC/NPC1/Speechbubble3/Speechbubble2").visible = false

func _on_Speechbubble6_body_entered(body):
	if body.name == "Player":
		get_node("NPC/NPC2/Speechbubble6/Speechbubble6").visible = true

func _on_Speechbubble6_body_exited(body):
	if body.name == "Player":
		get_node("NPC/NPC2/Speechbubble6/Speechbubble6").visible = false
