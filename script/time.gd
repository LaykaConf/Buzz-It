extends Label
var timestart =  true

func _process(delta):
	self.text = str(Global_Var.time)

