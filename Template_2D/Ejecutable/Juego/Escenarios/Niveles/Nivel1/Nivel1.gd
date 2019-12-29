extends Node2D

var veloFondo = 10
var actual
var actual2

var preEnemigo = load("res://Ejecutable/Juego/Enemigos/Enemigo/Enemigo1.tscn")
var Enemigo 
var contEnemi = 0
var rng = RandomNumberGenerator.new()
var contEnemis = 0


func _on_Izquierda_pressed():

	get_node("Personaje1").izquierda()
##	motion.x = velocidad * delta
#	get_node("Personaje1").motion.x = get_node("Personaje1").velocidad * delta
	pass # Replace with function body.


func _on_Derecha_pressed():
	get_node("Personaje1").derecha()
	pass # Replace with function body.


func _on_Timer_timeout():
#	actual = get_node("terreno").get_position().x
	actual = get_node("Fondo").get_position().y
	get_node("Fondo").set_position(Vector2(get_node("Fondo").get_position().x, actual + veloFondo  ))
	actual2 = get_node("Fondo2").get_position().y
	get_node("Fondo2").set_position(Vector2(get_node("Fondo2").get_position().x, actual2 + veloFondo  ))
	
	if get_node("Fondo").get_position().y >= 600:
		get_node("Fondo").set_position(Vector2(0,get_node("Fondo").get_position().y-600))
#		sacarMalos()
		
	if get_node("Fondo2").get_position().y >= 600:
		sacarMalos()
		get_node("Fondo2").set_position(Vector2(0,get_node("Fondo2").get_position().y-600))
		
	pass # Replace with function body.

func sacarMalos():
	contEnemi += 1
	for i in range(contEnemi-1):
		rng.randomize()
#		print(rng.randf_range(64, 1100))
		Enemigo = preEnemigo.instance()
		get_node("Fondo2").add_child(Enemigo)
		Enemigo.set_position(Vector2(rng.randf_range(-64, 1100),-64*i))
		print("enemigo-serie: ", i)
		contEnemis += 1
		print("ienemigo-total: ", contEnemis)
		print("cont-1", contEnemi -1)