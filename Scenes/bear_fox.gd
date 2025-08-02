extends CharacterBody2D

@onready var anim: AnimatedSprite2D = $anim

var can_move = false
var auto_run = false
var auto_run_speed = 300.0

func _ready():
	anim.play("default")

func _process(_delta):
	if anim.animation == "death":
		# If in death animation, ignore inputs and movement
		return

	if auto_run:
		# Auto-run mode: move left automatically
		velocity.x = -auto_run_speed
		velocity.y = 0
		move_and_slide()
		anim.play("run")
		anim.flip_h = true  # Facing left
		return

	if not can_move:
		anim.play("default")
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

	if direction == Vector2.ZERO:
		anim.play("default")
	else:
		anim.play("run")

	if direction.x != 0:
		anim.flip_h = direction.x < 0

	direction = direction.normalized()
	velocity = direction * 300
	move_and_slide()

# Call this function from your main script to trigger auto run
func start_auto_run():
	can_move = false
	auto_run = true
