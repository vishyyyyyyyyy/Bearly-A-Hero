extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		print("teddyyyyy picked up!")

		var trigger = get_parent().get_node("SceneTrigger")
		trigger.set_teddy_picked_up()

		call_deferred("queue_free")  
		# there some problem when i just do normal queue but it stop breaking when i do this soooo
