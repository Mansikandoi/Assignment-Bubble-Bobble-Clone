extends CharacterBody2D

@export var speed := 200.0
@export var jump_velocity := -500.0
@export var gravity := 900.0
@export var bubble_scene: PackedScene

var facing := 1

func _physics_process(delta):
	# Gravity
	if not is_on_floor():
		velocity.y += gravity * delta

	# Horizontal movement
	var input_dir := Input.get_axis("move_left", "move_right")
	velocity.x = input_dir * speed
	if input_dir != 0:
		facing = sign(input_dir)

	# Jump
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity

	move_and_slide()

	# Fire bubble
	if Input.is_action_just_pressed("fire"):
		shoot()


func shoot():
	if bubble_scene == null:
		return

	var b = bubble_scene.instantiate()
	b.global_position = global_position + Vector2(facing * 16, 0)
	b.dir = facing
	get_tree().current_scene.add_child(b)
