extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
var preMenu = load("res://Ejecutable/Menu/Menu_entrar/Menu_entrar.tscn")
var Menu

func _ready():
	
	var sizeX = get_viewport().size.x
	var sizeY = get_viewport().size.y
	var file = File.new()
	file.open("res://Ejecutable/Menu/Creditos/Licencias.gd", File.READ)
	$ScrollContainer/Creditos.set_text("hola")
	$ScrollContainer/Creditos.set_text(str(file.get_as_text()))
	print(str(file.get_as_text()))
#	$ScrollContainer/Creditos.set_text(str(file.get_as_text()))
	$ScrollContainer.set_size(Vector2(sizeX * 0.45, sizeY * 0.65))
	$ScrollContainer.set_position(Vector2(sizeX * 0.55, sizeY * 0.3))
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Entrar_pressed():
	Menu =preMenu.instance()
	get_node("/root/Nodo_Dios").add_child(Menu)
	get_node("/root/Nodo_Dios/Music_menu").play()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$".".queue_free()
	pass # Replace with function body.
