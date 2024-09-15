extends Node2D
@onready var player = $player


func _ready():
	player.morreu.connect(menuDeath)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func menuDeath():
	get_tree().change_scene_to_file("res://cenas/menu_death.tscn")
