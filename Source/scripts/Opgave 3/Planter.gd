extends Node2D


onready var plante1 = get_node("Plante1/Potteplante1")
onready var plante5 = get_node("Potteplante5")
onready var plante6 = get_node("Potteplante6")
onready var plante2 = get_node("Plante2/Potteplante2")
onready var plante3 = get_node("Plante3/Potteplante3")
onready var plante4 = get_node("Plante4/Potteplante4")
onready var plante7 = get_node("Potteplante7")

func _on_Plante1_area_entered(area):
	if area.name == "Vand":
		plante1.visible = true
		Global.Planter += 1

func _on_Plante5_area_entered(area):
	if area.name == "Vand":
		plante5.visible = true
		Global.Planter += 1

func _on_Plante6_area_entered(area):
	if area.name == "Vand":
		plante6.visible = true
		Global.Planter += 1

func _on_Plante2_area_entered(area):
	if area.name == "Vand":
		plante2.visible = true
		Global.Planter += 1

func _on_Plante3_area_entered(area):
	if area.name == "Vand":
		plante3.visible = true
		Global.Planter += 1

func _on_Plante4_area_entered(area):
	if area.name == "Vand":
		plante4.visible = true
		Global.Planter += 1

func _on_Plante7_area_entered(area):
	if area.name == "Vand":
		plante7.visible = true
		Global.Planter += 1
