extends Node2D

var cutscene_played = false  # Flag to track cutscene state

func _ready():
	$TeddyBear.visible = false
	$"S5-text1".visible = true
	$CharacterBody2D.can_move = true
	$"S12-text4".visible = false

func _input(event):
	if Input.is_action_just_pressed("drop_object"):
		drop_teddy()
		if not cutscene_played:
			cut_scene()
			cutscene_played = true  # Mark cutscene as played

func drop_teddy(): 
	$TeddyBear.visible = true  # or queue_free() if you want to delete it
	print("teddy dropped!")
	$ExitTrigger.set_teddy_dropped()
	$"S5-text1".visible = false
	#$"S5-text2".visible = true

func cut_scene(): 
	$transition._transition()
	await get_tree().create_timer(4.0).timeout
	secondhalf()

	

func secondhalf():
	$Pile.visible = true
	$"S5-text1".visible = false
	$Textplaceholder.visible = true
	$Pfpplaceholder.visible = true
	$Robberpfp.visible = true
	$"S12-text4".visible = true
	$"S12-text4/AnimationPlayer".play("S12-text4")
