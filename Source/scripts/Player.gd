extends KinematicBody2D


var velocity = Vector2()
var checkpoint1 = Vector2(2680,-650)

func _ready():
	$AnimatedSprite.play("Idle")
	$PauseMenu/Dans.play("Pauseskærm")
func _physics_process(delta):
	idle()
	checkpoint()
	vanding()
	if Input.is_action_pressed("escape"):
		get_node("PauseMenu").visible = true
	if Global.movement == true:
		movement()

func vanding():
	if Input.is_action_pressed("Interact") and Global.vandkande == true:
		$AnimatedSprite.play("Vanding")
		get_node("Vand/Vand").disabled = false
		Global.movement = false
func movement():
	velocity = Vector2()

	if Input.is_action_pressed("ui_right"):
		velocity.x = Global.speed
		velocity.y = 0
		$AnimatedSprite.play("Walk_e")
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -Global.speed
		velocity.y = 0
		$AnimatedSprite.play("Walk_w")
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -Global.speed
		velocity.x = 0
		$AnimatedSprite.play("Walk_n")
	elif Input.is_action_pressed("ui_down"):
		velocity.y = Global.speed
		velocity.x = 0
		$AnimatedSprite.play("Walk_s")

func idle():
	if Input.is_action_just_released("ui_up"):
		$AnimatedSprite.play("Idle")
	if Input.is_action_just_released("ui_right"):
		$AnimatedSprite.play("Idle")
	if Input.is_action_just_released("ui_left"):
		$AnimatedSprite.play("Idle")
	if Input.is_action_just_released("ui_down"):
		$AnimatedSprite.play("Idle")

	velocity.normalized()
	move_and_slide(velocity * Global.speed)

func checkpoint():
	if Global.checkpoint == 1:
		position.x = 2690
		position.y = -650
		Global.checkpoint -= 1
	if Global.checkpoint == 2:
		position.x = 2690
		position.y = 800
		Global.checkpoint -= 2

func _on_AnimatedSprite_animation_finished():
	$AnimatedSprite.play("Idle")
	Global.movement = true
	get_node("Vand/Vand").disabled = true
	


func _on_Spil_videre_pressed():
	get_node("PauseMenu").visible = false




func _on_Luk_spil_pressed():
	Scenetransition.change_scene("res://Scenes/Startside.tscn")
	get_node("PauseMenu").visible = false




