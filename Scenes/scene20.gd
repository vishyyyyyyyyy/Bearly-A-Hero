extends Node2D

@onready var kill_timer: Timer = $guardDog4/Area2D/killTimer
@onready var pan_camera: Camera2D = $Sprite2D2/panCamera
@onready var camera_2d: Camera2D = $CharacterBody2D/Camera2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pan_camera.make_current()
	$Sprite2D2/AnimationPlayer.play("new_animation")
	await $Sprite2D2/AnimationPlayer.animation_finished
	camera_2d.make_current()
	$CharacterBody2D.can_move = true # Replace with function body.


func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	Engine.time_scale = 0.5
	kill_timer.start()
	
	
func _on_kill_timer_timeout() -> void:
	Engine.time_scale = 1.0 # Replace with function body.
	get_tree().reload_current_scene()
	
	
	
	
	
