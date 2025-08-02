extends Area2D

var entered = false
#var teddy_picked_up = false

#func set_teddy_picked_up():
	#teddy_picked_up = true
	#check_exit_condition()



func _on_body_entered(body: CharacterBody2D) -> void:
	if body is CharacterBody2D:
		entered = true
		check_exit_condition()


func _on_body_exited(body: CharacterBody2D) -> void:
	if body is CharacterBody2D:
		entered = false
	
func check_exit_condition():
	#if entered and teddy_picked_up:
		get_tree().change_scene_to_file("res://Scenes/scene15.tscn")
