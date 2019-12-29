extends Node

var preNivel_juegar_1 = preload("res://Ejecutable/Juego/Escenarios/Niveles/Nivel1/Nivel1.tscn")
var preNivel_juegar_2 = preload("res://Ejecutable/Juego/Escenarios/Niveles/Nivel2/Nivel2.tscn")
var Nivel_juegar = 0

var preMenu = load("res://Ejecutable/Menu/Menu_entrar/Menu_entrar.tscn")
var Menu
# Called when the node enters the scene tree for the first time.
func _ready():
	if Nivel_juegar == 0:
		get_node("Botones_niveles/Boton_nivel2").hide()
		
#	if get_node("/root/Nodo_Dios").Nivel_jugar == 1:
#		get_node("Botones_niveles/Boton_nivel2").show()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Boton_nivel1_pressed():
	get_node("/root/Nodo_Dios").Nivel_jugar = 1
	cargar_nivel(preNivel_juegar_1)
	pass # Replace with function body.
	
func _on_Boton_nivel2_pressed():
	get_node("/root/Nodo_Dios").Nivel_jugar = 2
	cargar_nivel(preNivel_juegar_2)

	pass # Replace with function body.

func cargar_nivel(preNivel_juegar):
	Nivel_juegar =preNivel_juegar.instance()
	get_node("/root/Nodo_Dios").add_child(Nivel_juegar)
	get_node("/root/Nodo_Dios/Music_menu").stop()
	get_node("/root/Nodo_Dios").Nivel_jugar = 1
	$".".queue_free()
	pass 


func _on_Timer_timeout():
	Menu =preMenu.instance()
	get_node("/root/Nodo_Dios").add_child(Menu)
	get_node("/root/Nodo_Dios/Music_menu").play()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$".".queue_free()
	pass # Replace with function body.
