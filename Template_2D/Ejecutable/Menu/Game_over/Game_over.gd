extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var preMenu = load("res://Ejecutable/Menu/Menu_niveles/Escena_menu_niveles.tscn")
var Menu

# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_node("AudioGameOver").play())
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	Menu =preMenu.instance()
	get_node("/root/Nodo_Dios").add_child(Menu)
	get_node("/root/Nodo_Dios/Music_menu").play()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
#	$.queue_free()
	$".".queue_free()
	pass # Replace with function body.
