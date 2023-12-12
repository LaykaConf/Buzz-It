extends Button
var retryanim = false

func _process(delta):
	if Global_Var.idle == false:
		self.disabled = true
	if Global_Var.idle == true:
		self.disabled = false
	
	
func _pressed():
	Global_Var.startgame = true
	Global_Var.retryanim = true
	yield(get_tree().create_timer(1.5), "timeout")
	Global_Var.time = 0
	Global_Var.score = 0
	Global_Var.moscasmatadas = 0
	Global_Var.bombasmatadas = 0
	Global_Var.masrapido = 0.6
	Global_Var.idle = false
	get_tree().change_scene("res://Scenes/game.tscn")
