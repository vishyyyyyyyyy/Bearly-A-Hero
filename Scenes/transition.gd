extends CanvasLayer

@onready var color_rect = $ColorRect
@onready var animation_player = $ColorRect/AnimationPlayer

func _ready() -> void:
	color_rect.visible = false
	
func _transition():
	color_rect.visible = true
	animation_player.play("cutscene")
	
