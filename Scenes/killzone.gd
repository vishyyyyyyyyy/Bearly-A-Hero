extends Area2D

@onready var kill_timer: Timer = $killTimer



func _on_body_entered(body: Node2D) -> void:
	print("you died!")
	kill_timer.start()
	


func _on_kill_timer_timeout() -> void:
	get_tree().reload_current_scene()
