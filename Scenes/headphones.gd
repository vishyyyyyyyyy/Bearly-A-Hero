extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		print("Heaphone picked up!")

		# Get the scene switch trigger and notify it
		var trigger = get_parent().get_node("SceneTrigger") # Adjust this if needed
		trigger.set_headphone_picked_up()

		queue_free() # Remove scarf from scene
