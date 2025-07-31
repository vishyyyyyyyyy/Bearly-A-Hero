extends Node2D

func _ready():
	$TeddyBear.visible = false
	$"S5-text1".visible = true
	$CharacterBody2D.can_move = true

func _input(event):
	if Input.is_action_just_pressed("drop_object"):
		drop_teddy()
		cut_scene()
		

func drop_teddy(): 
	$TeddyBear.visible = true  # or queue_free() if you want to delete it
	print("teddy dropped!")
	$ExitTrigger.set_teddy_dropped()
	$"S5-text1".visible = false
	#$"S5-text2".visible = true
	
func cut_scene(): 
	$transition._transition()


func _on_timer_timeout() -> void:
	pass # Replace with function body.
