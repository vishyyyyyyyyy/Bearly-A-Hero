extends Node2D

const SPEED = 60

var direction  = -1

@onready var ray_castdown: RayCast2D = $RayCastdown
@onready var ray_cast_2_dup: RayCast2D = $RayCast2Dup
@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D
@onready var collision_shape_2d_2: CollisionShape2D = $Area2D/CollisionShape2D2


func _ready() -> void:
	$AnimatedSprite2D.flip_h = true
	collision_shape_2d_2.disabled = true

func _process(delta: float) -> void:
	if ray_castdown.is_colliding():
		direction = -1
		$AnimatedSprite2D.play("default")
		collision_shape_2d_2.disabled = true
		collision_shape_2d.disabled = false
	if ray_cast_2_dup.is_colliding():
		direction = 1
		$AnimatedSprite2D.play("backwards")
		collision_shape_2d_2.disabled = false
		collision_shape_2d.disabled = true
	position.y += direction * SPEED * delta
