extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const GRAVITY = 1200


func _physics_process(delta):
	velocity.y += GRAVITY * delta

	if Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_VELOCITY

	move_and_slide()
