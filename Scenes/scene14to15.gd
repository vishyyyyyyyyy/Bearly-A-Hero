extends Area2D

var entered = false
var bearautorun = false

func set_bearautorun():
	bearautorun = true
	check_exit_condition()

func _on_body_entered(body: Node) -> void:
	if body is CharacterBody2D:
		entered = true
		check_exit_condition()

func _on_body_exited(body: Node) -> void:
	if body is CharacterBody2D:
		entered = false

func check_exit_condition():
	if entered and bearautorun:
		get_tree().change_scene_to_file("res://Scenes/scene15.tscn")
