extends Button


func _on_Button_pressed():
	Global_Var.startgame = true
	yield(get_tree().create_timer(1.5), "timeout")
	get_tree().change_scene("res://Scenes/game.tscn")
