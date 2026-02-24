extends CharacterBody2D

@export var speed := 100.0
@export var gravity := 900.0

var dir := -1
var trapped := false

func _physics_process(delta):
	if trapped:
		return

	# Patrol
	if not is_on_floor():
		velocity.y += gravity * delta

	velocity.x = dir * speed
	move_and_slide()

	if is_on_wall():
		dir *= -1


func trap(bubble):
	trapped = true
	velocity = Vector2.ZERO

	set_collision_layer(0)
	set_collision_mask(0)
