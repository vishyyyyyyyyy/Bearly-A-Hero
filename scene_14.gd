extends Node2D
func _ready():
	$bearFox.can_move = true
@onready var animated_sprite_2d: AnimatedSprite2D = $CharacterBody2D2/AnimatedSprite2D
@onready var anim: AnimatedSprite2D = $bearFox/anim
@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D




func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	animated_sprite_2d.flip_h = false # Replace with function body.
	animated_sprite_2d.play("attack")
	$bearFox/anim.play("death")
	collision_shape_2d.disabled = true
	
