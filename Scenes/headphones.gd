extends Area2D



func _on_body_entered(body: CharacterBody2D) -> void:
	print("headphones")
	queue_free()
