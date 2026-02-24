extends Node2D

var score := 0
var lives := 3

@onready var score_label = $HUD/ScoreLabel
@onready var lives_label = $HUD/LivesLabel


func _ready():
	update_hud()


func update_hud():
	score_label.text = "Score: %d" % score
	lives_label.text = "Lives: %d" % lives


func add_score(amount):
	score += amount
	update_hud()


func damage_player():
	lives -= 1
	update_hud()

	if lives <= 0:
		game_over()


func game_over():
	get_tree().change_scene_to_file("res://scenes/screens/GameOver.tscn")
