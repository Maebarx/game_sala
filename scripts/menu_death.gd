extends CanvasLayer
var pontos := 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	



func _on_menu_pressed():
	Globals.pontos = 0
	get_tree().change_scene_to_file("res://cenas/menu_start.tscn")


func _on_reset_pressed():
	Globals.pontos = 0
	get_tree().change_scene_to_file("res://cenas/fase_01.tscn")



func _on_quit_pressed():
	print("saiu")
	Globals.pontos = 0
	get_tree().quit()
