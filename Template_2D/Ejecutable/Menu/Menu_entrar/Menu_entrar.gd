extends Node

var preMenu_niveles = preload("res://Ejecutable/Menu/Menu_niveles/Escena_menu_niveles.tscn")
var Menu_niveles
var preCreditos = preload("res://Ejecutable/Menu/Creditos/Creditos.tscn")
var Creditos 
# Called when the node enters the scene tree for the first time.
func _ready():
#	print(Menu_niveles)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Entrar_pressed():
#	valor01 =	get_tree().change_scene("res://Ejecutable/Juego/Escenarios/Niveles/Nivel1/Nivel1.tscn")
	Menu_niveles =preMenu_niveles.instance()
	get_node("/root/Nodo_Dios").add_child(Menu_niveles)
	$".".queue_free()
#	get_node("Botones/AudioPincha")
	print(get_path())
	pass # Replace with function body.


func _on_Creditos_pressed():
	Creditos =preCreditos.instance()
	get_node("/root/Nodo_Dios").add_child(Creditos)
	$".".queue_free()
	pass # Replace with function body.
