extends CharacterBody2D

@export var speed := 200.0
@export var float_speed := 60.0
@export var horizontal_time := 0.5
@export var lifetime := 4.0

var dir := 1
var time_alive := 0.0
var floating := false
var trapped_enemy

func _physics_process(delta):
	time_alive += delta

	if time_alive >= lifetime:
		queue_free()
		return

	# If enemy trapped, float upward
	if trapped_enemy:
		trapped_enemy.global_position = global_position
		global_position.y -= float_speed * delta
		return

	# Normal bubble movement
	if not floating:
		global_position.x += dir * speed * delta
		if time_alive >= horizontal_time:
			floating = true
	else:
		global_position.y -= float_speed * delta


func _on_body_entered(body):
	if body.is_in_group("enemies") and trapped_enemy == null:
		trapped_enemy = body
		body.trap(self)
