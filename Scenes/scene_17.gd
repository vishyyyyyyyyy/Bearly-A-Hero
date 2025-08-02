extends Node2D

var bodyCounter = 0
@onready var kill_timer: Timer = $Node2D/kill/killTimer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CharacterBody2D.can_move = true # Replace with function body.
	
	$TriggerScene.change_scene()


func _on_kill_body_entered(body: CharacterBody2D) -> void:
	bodyCounter += 1
	print(bodyCounter)
	if bodyCounter == 1:
		Engine.time_scale = 0.5
		kill_timer.start() # Replace with function body.


func _on_kill_timer_timeout() -> void:
	Engine.time_scale = 1.0 # Replace with function body.
	get_tree().reload_current_scene()


func _on_hide_coll_body_entered(body: CharacterBody2D) -> void:
	bodyCounter += 1 # Replace with function body.
	print(bodyCounter)


func _on_hide_coll_body_exited(body: CharacterBody2D) -> void:
	bodyCounter -= 1 # Replace with function body.
	print(bodyCounter)
	if bodyCounter == 1:
		Engine.time_scale = 0.5
		kill_timer.start() # Replace with function body.


func _on_kill_body_exited(body: CharacterBody2D) -> void:
	bodyCounter -= 1 # Replace with function body.
	print(bodyCounter)
