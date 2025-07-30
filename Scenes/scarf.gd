extends Area2D



func _on_body_entered(body: Node2D) -> void:
	print("Scarf")
	queue_free()
