extends Sprite

func _process(delta):
	if Global_Var.startgame == true:
		$AnimationPlayer.play("startgame")
		set_process(false)
