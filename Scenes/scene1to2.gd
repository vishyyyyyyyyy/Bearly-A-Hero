extends Area2D

var entered = false

func _on_body_entered(body: Node2D) -> void:
	entered = true # Replace with function body.



func _on_body_exited(body: Node2D) -> void:
	entered = true # Replace with function body.

func _process(delta):
	if entered == true:
		get_tree().change_scene_to_file("res://Scenes/scene2.tscn")
