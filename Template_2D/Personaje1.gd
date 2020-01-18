extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#var dr_vector
var beam_shoot = preload("res://Ejecutable/Juego/Escenarios/Potenciadores/laser/beam_shoot/beam_bullet.tscn")
var motion = Vector2()
var velocidad  = 10000
var mydelta
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	#¿por que se ha cambiao el fisic del proces?
	#simulación gravedad
#	motion.y += 4
	var shoot = Input.is_action_just_pressed("disparo")
#	var release_shoot = Input.is_action_just_released("disparo")
	var release_shoot = Input.is_action_just_released("disparo") 

# esto  no se que es, creo que by Bravo
#	print ("angulo en radianes: " + str( motion.angle()))
	
	if shoot:#&& (get_node("beam_bullet") == null):
		var beam_shoot_instance = beam_shoot.instance()
		add_child(beam_shoot_instance)
		beam_shoot_instance.position = $Position2D.position
	
	if release_shoot:
		get_node("beam_bullet").queue_free()

	#movimiento: poner valores a la velo lineal según entradas cruceta lateral
	if Input.is_action_pressed("ui_right"):
#		print("derecha")
		motion.x = velocidad * delta
	elif Input.is_action_pressed("ui_left"):
		print("izquierda")
		motion.x = - velocidad * delta
	else:
		motion.x = 0

# Limites para el movimiento
	if position.x > get_viewport().size.x:
		position.x = get_viewport().size.x
	if position.y > get_viewport().size.y:
		position.y = get_viewport().size.y
	if position.x < 0:
		position.x = 0
	
	motion = move_and_slide(motion)
	mydelta = delta

#func _on_izquierda_pressed(delta):
#	motion.x = - velocidad * delta
#	print("izquierda")
#
#	print(delta)
func izquierda():
	motion.x = - velocidad *  mydelta*7
	motion = move_and_slide(motion)
	pass # Replace with function body.
	
func derecha():
	motion.x = velocidad *  mydelta*7
	motion = move_and_slide(motion)
	pass # Replace with function body.
