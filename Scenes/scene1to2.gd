extends Area2D

var scene_changed = false

func _on_body_entered(body: Node2D) -> void:
	if not scene_changed and body.name == "CharacterBody2D":
		scene_changed = true
		get_tree().change_scene_to_file("res://Scenes/scene2.tscn")

func _on_body_exited(body: Node2D) -> void:
	pass  # You can remove this if unused
