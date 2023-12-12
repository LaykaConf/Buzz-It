extends Node2D

var timestart = true
var start = false
var finish = false

var nodomosca1 = preload("res://Enemigos/MoscaDef.tscn")
var nodomosca2 = preload("res://Enemigos/MoscaDef2.tscn")
var nodomosca3 = preload("res://Enemigos/MoscaDef3.tscn")
var nodomosca4 = preload("res://Enemigos/MoscaDef4.tscn")
var nodomosca5 = preload("res://Enemigos/MoscaDef5.tscn")
var nodomosca6 = preload("res://Enemigos/MoscaDef6.tscn")
var nodomosca7 = preload("res://Enemigos/MoscaDef7.tscn")
var nodomosca8 = preload("res://Enemigos/MoscaDef8.tscn")
var nodomosca9 = preload("res://Enemigos/MoscaDef9.tscn")
var nodomosca10 = preload("res://Enemigos/MoscaDef10.tscn")
var nodomosca11 = preload("res://Enemigos/MoscaDef11.tscn")
var nodomosca12 = preload("res://Enemigos/MoscaDef12.tscn")
var nodomosca13 = preload("res://Enemigos/MoscaDef13.tscn")


func instmosca1(pos):
	var instance = nodomosca1.instance()
	instance.position = pos
	add_child(instance)
	
func instmosca2(pos):
	var instance = nodomosca2.instance()
	instance.position = pos
	add_child(instance)	

func instmosca3(pos):
	var instance = nodomosca3.instance()
	instance.position = pos
	add_child(instance)	

func instmosca4(pos):
	var instance = nodomosca4.instance()
	instance.position = pos
	add_child(instance)	

func instmosca5(pos):
	var instance = nodomosca5.instance()
	instance.position = pos
	add_child(instance)	

func instmosca6(pos):
	var instance = nodomosca6.instance()
	instance.position = pos
	add_child(instance)	

func instmosca7(pos):
	var instance = nodomosca7.instance()
	instance.position = pos
	add_child(instance)	

func instmosca8(pos):
	var instance = nodomosca8.instance()
	instance.position = pos
	add_child(instance)	

func instmosca9(pos):
	var instance = nodomosca9.instance()
	instance.position = pos
	add_child(instance)	

func instmosca10(pos):
	var instance = nodomosca10.instance()
	instance.position = pos
	add_child(instance)	
	
func instmosca11(pos):
	var instance = nodomosca11.instance()
	instance.position = pos
	add_child(instance)	

func instmosca12(pos):
	var instance = nodomosca12.instance()
	instance.position = pos
	add_child(instance)	
	
func instmosca13(pos):
	var instance = nodomosca13.instance()
	instance.position = pos
	add_child(instance)	

func _process(delta):
	if finish:
		yield(get_tree().create_timer(2.0), "timeout")
		get_tree().change_scene("res://Scenes/scorefinal.tscn")

func _ready():
	Global_Var.adiosanim = false
	if Global_Var.startgame == true:
		start = true
		while start:
			if Global_Var.time < 30:
				var numero = randi() % 13 - 0  
				if numero == 0:
					print(numero)
					instmosca1(Vector2(10000, 10000))
				if numero == 1:
					print(numero)
					instmosca2(Vector2(10000, 10000))	
				if numero == 2:
					print(numero)
					instmosca3(Vector2(10000, 10000))
				if numero == 3:
					print(numero)
					instmosca4(Vector2(10000, 10000))	
				if numero == 4:
					print(numero)
					instmosca5(Vector2(10000, 10000))	
				if numero == 5:
					print(numero)
					instmosca5(Vector2(10000, 10000))	
				if numero == 6:
					print(numero)
					instmosca7(Vector2(10000, 10000))	
				if numero == 7:
					print(numero)
					instmosca8(Vector2(10000, 10000))	
				if numero == 8:
					print(numero)
					instmosca9(Vector2(10000, 10000))
				if numero == 9:
					print(numero)
					instmosca10(Vector2(10000, 10000))
				if numero == 10:
					print(numero)
					instmosca11(Vector2(10000, 10000))
				if numero == 11:
					print(numero)
					instmosca12(Vector2(10000, 10000))
				if numero == 12:
					print(numero)
					instmosca13(Vector2(10000, 10000))
			if Global_Var.time == 30:
				finish = true
				Global_Var.startgame = false
				start = false
			yield(get_tree().create_timer(Global_Var.masrapido,0), "timeout")
