extends AnimatedSprite

func _process(delta):
	if Global_Var.startgame == true:
		$AnimationPlayer.play("playbtnstart")
		set_process(false)
