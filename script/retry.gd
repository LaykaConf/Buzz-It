extends AnimatedSprite

func _process(delta):
	if Global_Var.idle:
		$AnimationPlayer.play("idelfli")
	if Global_Var.retryanim:
		Global_Var.idle = false
		$AnimationPlayer.play("adios")

func _ready():
	Global_Var.retryanim = false
	yield(get_tree().create_timer(5.0), "timeout")
	$AnimationPlayer.play("entrada")
	yield(get_tree().create_timer(2.0), "timeout")
	Global_Var.idle = true
