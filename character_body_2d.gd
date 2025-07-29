extends Node2D

@onready var anim = $AnimatedSprite2D

func _ready():
	anim.play("RobberIdle")

func _process(_delta):  # You forgot to include `_delta` here
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1

	# Play animation based on key pressed
	if direction == Vector2.ZERO:
		anim.play("RobberIdle")
	else:
		anim.play("RobberRun")

	# Flip the sprite only if moving left or right
	if direction.x != 0:
		anim.flip_h = direction.x < 0

	#move the character (if needed)
	#position += direction.normalized() * 100 * _delta  # Adjust speed as needed
