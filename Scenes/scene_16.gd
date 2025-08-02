extends Node2D

@onready var kill_timer: Timer = $guardDog1/Area2D/killTimer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CharacterBody2D.can_move = true # Replace with function body.





func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	Engine.time_scale = 0.5
	kill_timer.start()
	
	
func _on_kill_timer_timeout() -> void:
	Engine.time_scale = 1.0 # Replace with function body.
	get_tree().reload_current_scene()
