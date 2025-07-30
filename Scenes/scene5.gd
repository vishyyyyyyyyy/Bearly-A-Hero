extends Node2D

func _ready():
	$Scarf.visible = false
	$"S5-text1".visible = true

func _input(event):
	if Input.is_action_just_pressed("drop_scarf"):
		drop_scarf()

func drop_scarf(): 
	$Scarf.visible = true  # or queue_free() if you want to delete it
	print("Scarf dropped!")
	$ExitTrigger.set_scarf_dropped()
	$"S5-text1".visible = false
	$"S5-text2".visible = true
	
