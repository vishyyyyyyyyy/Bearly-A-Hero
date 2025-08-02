extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		print("yes")
		call_deferred("change_scene")

func change_scene():
	get_tree().change_scene_to_file("res://Scenes/scene19.tscn")
