extends KinematicBody2D

var pregameo = load("res://Ejecutable/Menu/Game_over/Game_over.tscn")
var gameo

var hp
#var t
#var px0
# Called when the node enters the scene tree for the first time.
func _ready():
	hp = 100
#	t = 0
#	px0 = position.x

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
#func _process(delta):
#	t += delta
#	position.x = px0 + 400*sin(t)

func _on_Area2D_body_entered(body):

	if body.name == "Personaje1":
		gameo = pregameo.instance()
		get_node("/root/Nodo_Dios").add_child(gameo)
		get_node("/root/Nodo_Dios/Music_menu").play()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_parent().get_parent().queue_free()
#		print(body.name)
	if body.name == "Enemigo1":
		pass
	else:
#		print(body.name)
		print("mato:  ",$".".name)
		$".".queue_free()
	pass # Replace with function body.

func take_damage():

#	if hp <= 0:
#		queue_free()
#		$CollisionPolygon2D.queue_free()
#		$Sprite.visible = false
#		var explosion = enemy_exposion.instance()
#		add_child(explosion)
#	else:
	$Timer.start()

func _on_Timer_timeout():
	if hp <= 0:
		queue_free()
	else:
		hp -= 10
		$Timer.start()
		
func take_damage_off():
	$Timer.stop()