extends Node2D

@onready var timer: Timer = $Timer
@onready var safe_timer: Timer = $safeTimer
@onready var kill_timer: Timer = $kill/killTimer
@onready var character_body_2d: CharacterBody2D = $CharacterBody2D

var bodyCounter = 0
var has_intro_played = false
var text_in_progress = true

func _ready() -> void:
	$CharacterBody2D.can_move = true
	$kill/killcoll.disabled = true
	timer.one_shot = true
	safe_timer.one_shot = true
	start_intro()
#

func start_intro():
	has_intro_played = true
	$"S3-text1".visible = true

	await get_tree().create_timer(2.5).timeout
	$"S3-text1".visible = false
	$"S3-text2".visible = true
	await get_tree().create_timer(2.5).timeout
	$"S3-text2".visible = false
	$"S3-text3".visible = true
	await get_tree().create_timer(2.5).timeout
	$"S3-text3".visible = false
	$"S3-text4".visible = true
	
	
	$CharacterBody2D.can_move = true
	$IntroBlocker/CollisionShape2D.disabled = true
	#$kill/killcoll.disabled = false
	text_in_progress = false

func _on_tree_1_body_entered(body: CharacterBody2D) -> void:
	bodyCounter += 1
	$"S3-text1".visible = false

func _on_tree_1_body_exited(body: CharacterBody2D) -> void:
	bodyCounter -= 1
	if bodyCounter == 1:
		Engine.time_scale = 0.5
		$kill/killTimer.start()

func _on_remaining_body_entered(body: CharacterBody2D) -> void:
	bodyCounter += 1

func _on_remaining_body_exited(body: CharacterBody2D) -> void:
	bodyCounter -= 1
	if bodyCounter == 1:
		Engine.time_scale = 0.5
		$kill/killTimer.start()

func _on_kill_body_entered(body: CharacterBody2D) -> void:
	bodyCounter += 1
	if bodyCounter == 1:
		Engine.time_scale = 0.5
		$kill/killTimer.start()

func _on_kill_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()

func _on_kill_body_exited(body: CharacterBody2D) -> void:
	bodyCounter -= 1

func _on_timer_timeout() -> void:

	$bunny/AnimatedSprite2D.flip_h = true
	$kill/killcoll.disabled = false
	safe_timer.start()

func _on_safe_timer_timeout() -> void:
	$bunny/AnimatedSprite2D.flip_h = false
	$kill/killcoll.disabled = true
	timer.start()
