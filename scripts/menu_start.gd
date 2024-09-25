extends CanvasLayer
 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_iniciar_pressed():
	get_tree().change_scene_to_file("res://cenas/fase_01.tscn")


func _on_sair_pressed():
	print("saiu")
	get_tree().quit()



func _on_configuracao_pressed():
	get_tree().change_scene_to_file("res://cenas/config.tscn")


func _on_fases_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/fases.tscn")
