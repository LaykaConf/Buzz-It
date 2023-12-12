extends Node2D

func _ready():
	if Global_Var.score > Global_Var.bestscore:
		Global_Var.bestscore = Global_Var.score
