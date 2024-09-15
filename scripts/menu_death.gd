extends CanvasLayer
var pontos := 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	



func _on_menu_pressed():
	get_tree().change_scene_to_file("res://cenas/menu_start.tscn")
	Globals.pontos = 0

func _on_reset_pressed():
	get_tree().change_scene_to_file("res://cenas/fase_01.tscn")
	Globals.pontos = 0


func _on_quit_pressed():
	get_tree().quit()
	Globals.pontos = 0
