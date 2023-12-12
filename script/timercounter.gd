extends Sprite
var timestart = true
var unlocked = false

func _ready():
	unlocked = true
	while unlocked == true:
		if Global_Var.time < 30:
			Global_Var.time += 1
			if Global_Var.time == 5:
				Global_Var.masrapido = 0.4
			if Global_Var.time == 10:
				Global_Var.masrapido = 0.2
			if Global_Var.time == 20:
				Global_Var.masrapido = 0.15
		yield(get_tree().create_timer(1.0), "timeout")
		if Global_Var.time == 30:
			unlocked = false
			Global_Var.startgame = false
			
		
	
