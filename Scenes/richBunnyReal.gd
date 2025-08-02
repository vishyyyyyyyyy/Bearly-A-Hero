extends Node2D

const SPEED = 60

var direction  = -1
@onready var ray_cast_up: RayCast2D = $RayCastUp
@onready var ray_cast_don: RayCast2D = $RayCastDon
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $kill/CollisionShape2D
@onready var collision_shape_2d_2: CollisionShape2D = $kill/CollisionShape2D2

func _ready() -> void:
	collision_shape_2d_2.disabled = true

func _process(delta: float) -> void:
	if ray_cast_up.is_colliding():
		direction = -1
		animated_sprite_2d.play("backards")
		collision_shape_2d.disabled = false
		collision_shape_2d_2.disabled = true
	if ray_cast_don.is_colliding():
		direction = 1
		animated_sprite_2d.play("default")
		collision_shape_2d.disabled = true
		collision_shape_2d_2.disabled = false
	position.y += direction * SPEED * delta
