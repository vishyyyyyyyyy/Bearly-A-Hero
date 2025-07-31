extends CharacterBody2D  # You MUST extend CharacterBody2D for `move_and_slide()` to work

@onready var anim = $AnimatedSprite2D

var can_move = false

func _ready():
	anim.play("RobberIdle")

func _process(_delta):
	if not can_move:
		anim.play("RobberIdle")
		return

	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1

	# Play animation
	if direction == Vector2.ZERO:
		anim.play("RobberIdle")
	else:
		anim.play("RobberRun")

	# Flip sprite
	if direction.x != 0:
		anim.flip_h = direction.x < 0

	# Normalize direction to prevent faster diagonal movement
	direction = direction.normalized()

	# Set velocity and move
	velocity = direction * 300
	move_and_slide()
