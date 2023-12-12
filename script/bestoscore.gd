extends Label


func _ready():
	yield(get_tree().create_timer(3.0), "timeout")
	self.text = "Best Score: " +  str(Global_Var.bestscore)
