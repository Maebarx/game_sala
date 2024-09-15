extends CanvasLayer

func _process(delta):
	pass
	


func _on_x_600_pressed():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	get_viewport().size = Vector2(800,600)


func _on_x_720_pressed():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	get_viewport().size = Vector2(1280,720)


func _on_x_1080_pressed():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	get_viewport().size = Vector2(1920,1080)

func _on_fullscren_pressed() -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)



func _on_voltar_pressed():
	get_tree().change_scene_to_file("res://cenas/menu_start.tscn")
