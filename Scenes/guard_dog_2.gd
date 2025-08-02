extends Node2D

const SPEED = 60

var direction  = 1

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var collision_shape_2d_2: CollisionShape2D = $Area2D/CollisionShape2D2
@onready var collision_shape_2d_3: CollisionShape2D = $Area2D/CollisionShape2D3

func _ready() -> void:
	$AnimatedSprite2D.flip_h = true
	collision_shape_2d_2.disabled = true

func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
		$AnimatedSprite2D.flip_h = false
		collision_shape_2d_2.disabled = false
		collision_shape_2d_3.disabled = true
	if ray_cast_left.is_colliding():
		direction = 1
		$AnimatedSprite2D.flip_h = true
		collision_shape_2d_2.disabled = true
		collision_shape_2d_3.disabled = false
	position.x += direction * SPEED * delta
