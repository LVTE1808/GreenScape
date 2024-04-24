extends Area2D



func _on_Vandkande_body_entered(body):
	if body.name == "Player":
		Global.vandkande = true
		queue_free()
