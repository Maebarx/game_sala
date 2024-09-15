extends Node2D

@onready var player = $player

# Called when the node enters the scene tree for the first time.
func _ready():
		player.morreu.connect(menuDeath)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func _on_body_entered(body):
	if body.name == "player":
		print("morreu")
		player._dano()




func menuDeath():
	get_tree().change_scene_to_file("res://cenas/menu_death.tscn")
	visible = true
	
