extends Area2D

var entered = false



func _on_body_entered(body: CharacterBody2D) -> void:
	entered = true # Replace with function body.



func _on_body_exited(body: CharacterBody2D) -> void:
	entered = false # Replace with function body.
	
func _process(delta):
	if entered == true:
		get_tree().change_scene_to_file("res://Scenes/scene4.tscn")
