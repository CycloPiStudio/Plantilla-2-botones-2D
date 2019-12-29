extends Node2D

var pregameo = load("res://Ejecutable/Menu/Game_over/Game_over.tscn")
var gameo

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):

	if body.name == "Personaje1":
		gameo = pregameo.instance()
		get_node("/root/Nodo_Dios").add_child(gameo)
		get_node("/root/Nodo_Dios/Music_menu").play()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_parent().get_parent().queue_free()
#		print(body.name)
	else:
#		print(body.name)
		print("mato:  ",$".".name)
		$".".queue_free()
	pass # Replace with function body.
