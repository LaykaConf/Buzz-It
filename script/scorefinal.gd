extends Label

func _ready():
	yield(get_tree().create_timer(4.0), "timeout")
	if Global_Var.score >= 0:
		self.text = str(Global_Var.score)
	if Global_Var.score < 0:
		self.text = "0"

