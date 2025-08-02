extends Sprite2D
@onready var character_body_2d: CharacterBody2D = $"../CharacterBody2D"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	character_body_2d.can_move = true # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
