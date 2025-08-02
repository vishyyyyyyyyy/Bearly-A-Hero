extends Area2D


func _on_body_entered(body: Node2D) -> void:
		$"../Label".visible = false
		queue_free()
		$"../Label2".visible = true
