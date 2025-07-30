extends Node2D



func _ready():
	#var wall_shape1 = $"BearBlocker/CollisionShape2D" 
	#wall_shape1.disabled = false
	$Timer1.start()
	$Textplaceholder.visible = true
	$Text1.visible = true
	$Pfpplaceholder.visible = true
	$Robberpfp.visible = true
	
	

func _on_timer_1_timeout():
	$Text1.visible = false
	$Text2.visible = true
	$Robberpfp.visible = true
	$Pfpplaceholder.visible = true
	$Textplaceholder.visible = true
	$Timer2.start()  # Start next timer only after Timer1


func _on_timer_2_timeout():
	$Text2.visible = false
	$Pfpplaceholder.visible = false
	$Robberpfp.visible = false
	$Textplaceholder.visible = false
	$Text3.visible = true
	$CharacterBody2D.can_move = true
