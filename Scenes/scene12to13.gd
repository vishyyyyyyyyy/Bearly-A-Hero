extends Area2D

var entered = false
var teddy_dropped = false

@onready var wall_shape = $"../ExitBlocker/WallShape"  # adjust path as needed

func set_teddy_dropped():
	teddy_dropped = true
	wall_shape.disabled = true  # remove physical wall
	check_exit_condition()

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		entered = true
		check_exit_condition()

func _on_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		entered = false

func check_exit_condition():
	if entered and teddy_dropped:
		get_tree().change_scene_to_file("res://Scenes/scene13.tscn")
