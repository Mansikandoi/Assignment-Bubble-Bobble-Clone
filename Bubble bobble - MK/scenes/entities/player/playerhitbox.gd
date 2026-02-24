extends Area2D


func _on_area_entered(area):
	# Pop trapped bubbles
	if area.has_method("pop") and area.trapped_enemy:
		area.pop()
		get_tree().current_scene.add_score(100)


func _on_body_entered(body):
	# Enemy contact
	if body.is_in_group("enemies") and not body.trapped:
		get_tree().current_scene.damage_player()
