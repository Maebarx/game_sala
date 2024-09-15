extends Node2D
var ponto := 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _on_body_entered(body):
	if body.name == "player": #player colidi
		print("coletou") #mostra que pegou
		$anim.play("coletado") #anima pegou
		Globals.pontos += ponto #Soma
		await  $coli.call_deferred("queue_free")
		print(Globals.pontos)
		await $anim.animation_finished
		queue_free()
