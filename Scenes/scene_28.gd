extends Node2D


func _ready():
	$CanvasLayer/ColorRect/AnimationPlayer/Label2.visible = true
	$CanvasLayer/ColorRect/AnimationPlayer.play("new_animation")
