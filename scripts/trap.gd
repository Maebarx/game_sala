extends Area2D
@onready var player = $"../../player"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(delta):
	pass



func _on_body_entered(body):
	if body.name == "player":
		print("levou dano")
		player._dano()
