extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_fase_01_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/fase_01.tscn")


func _on_fase_02_pressed() -> void:
	pass # Replace with function body.


func _on_fase_03_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/fase_03.tscn")
