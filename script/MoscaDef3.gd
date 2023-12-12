extends AnimatedSprite
var valoreshijos
var boton_hijo
var animation_player

func _ready():
	var valoreshijos = get_node("Button")
	$AnimationPlayer.play("mosca")
	var boton_hijo = $Button
	# Conectar la señal "button_down" del botón a la función _on_button_down
	boton_hijo.connect("button_down", self, "_on_button_down")

# Función llamada cuando se presiona el botón
func _on_button_down():
	# Liberar el nodo actual (AnimatedSpritePadre)
	Global_Var.score = Global_Var.score + 1
	Global_Var.moscasmatadas = Global_Var.moscasmatadas + 1
	
	queue_free()
