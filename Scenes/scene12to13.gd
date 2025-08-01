extends Area2D

var entered = false
var finaltext = false

@onready var wall_shape = $"../ExitBlocker/WallShape"  # adjust path as needed

func playfinaltext():
	finaltext = true
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
	if entered and finaltext:
		get_tree().change_scene_to_file("res://Scenes/scene13.tscn")
