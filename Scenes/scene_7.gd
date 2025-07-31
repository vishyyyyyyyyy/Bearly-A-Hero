extends Node2D

@onready var timer: Timer = $Timer
@onready var safe_timer: Timer = $safeTimer
var bodyCounter = 0
@onready var kill_timer: Timer = $kill/killTimer
@onready var character_body_2d: CharacterBody2D = $CharacterBody2D


func _ready() -> void:
	$CharacterBody2D.can_move = true
	var killColl = get_node("kill/killcoll")
	killColl.disabled = true
	var nextScene = get_node("Area2D2/CollisionShape2D")

	
	# Ensure they are one-shot so we can alternate
	timer.one_shot = true
	safe_timer.one_shot = true

func _on_tree_1_body_entered(body: CharacterBody2D) -> void:
	print("entered")
	bodyCounter += 1
	print(bodyCounter)

func _on_tree_1_body_exited(body: CharacterBody2D) -> void:
	bodyCounter -= 1 # Replace with function body.
	print(bodyCounter)
	
func _on_remaining_body_entered(body: CharacterBody2D) -> void:
	bodyCounter += 1 # Replace with function body.
	print(bodyCounter)
	
func _on_remaining_body_exited(body: CharacterBody2D) -> void:
	bodyCounter -= 1 # Replace with function body.
	print(bodyCounter)
	
func _on_kill_body_entered(body: CharacterBody2D) -> void:
	bodyCounter += 1 # Replace with function body.
	print(bodyCounter)
	if bodyCounter == 1:
		Engine.time_scale = 0.5
		$kill/killTimer.start()
		
		
func _on_kill_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene() # Replace with function body.
		
	
func _on_kill_body_exited(body: CharacterBody2D) -> void:
	bodyCounter -= 1
	print(bodyCounter)


func _on_timer_timeout() -> void:
	var birdSprite = get_node("bird/AnimatedSprite2D")
	birdSprite.flip_h = false
	var killColl = get_node("kill/killcoll")
	killColl.disabled = false
	
	safe_timer.start()  # Start the next phase after timer ends

func _on_safe_timer_timeout() -> void:
	var birdSprite = get_node("bird/AnimatedSprite2D")
	birdSprite.flip_h = true
	var killColl = get_node("kill/killcoll")
	killColl.disabled = true
	
	timer.start()  # Loop back to the first phase
	

func _on_area_2d_body_entered(body: Node2D) -> void:
	var nextScene = get_node("Area2D2/CollisionShape2D")
	nextScene.disabled = false
