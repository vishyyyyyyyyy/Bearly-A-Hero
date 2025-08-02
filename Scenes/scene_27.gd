extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_animatedText() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _animatedText():
	$Node/AnimationPlayer/Label.visible = true
	$Node/AnimationPlayer.play("new_animation")
	await $Node/AnimationPlayer.animation_finished
	$Node/AnimationPlayer/Label.visible = false
	
	$Node/AnimationPlayer/Label2.visible = true
	$Node/AnimationPlayer.play("new_animation_2")
	await $Node/AnimationPlayer.animation_finished
	$Node/AnimationPlayer/Label2.visible = false
