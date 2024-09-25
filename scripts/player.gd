extends CharacterBody2D


const SPEED = 200.0
const JUMP_VELOCITY = -400.0

var dano
var isJump = false

signal morreu
func _dano():
	print("Levou dano")
	emit_signal("morreu")
	
func time_over():
	print("acabou o tempo")
	emit_signal("morreu")


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		isJump = true
	elif is_on_floor():
		isJump = false
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	
	
	if direction:
		velocity.x = direction * SPEED
		$anim.scale.x = direction
		$anim.play("run")
		if isJump:
			$anim.play("jump")


	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$anim.play("idle")

	move_and_slide()
