extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_animatedText() # Replace with function body.
	$Pfpplaceholder.visible = true
	$Textplaceholder.visible = true
	$Bearpfp.visible = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _animatedText():
	#txt1
	$Node/AnimationPlayer/Label.visible = true
	$Node/AnimationPlayer.play("1")
	await $Node/AnimationPlayer.animation_finished
	$Node/AnimationPlayer/Label.visible = false
	$Bearpfp.visible = false
	$Pfpplaceholder.visible = false
	
	#txt2
	$Pfpplaceholder2.visible = true
	$Bunnynocry.visible = true
	$Node/AnimationPlayer/Label2.visible = true
	$Node/AnimationPlayer.play("2")
	await $Node/AnimationPlayer.animation_finished
	$Node/AnimationPlayer/Label2.visible = false
	$Bunnynocry.visible = false

#txt3
	$Birdnocry.visible = true
	$Node/AnimationPlayer/Label3.visible = true
	$Node/AnimationPlayer.play("3")
	await $Node/AnimationPlayer.animation_finished
	$Node/AnimationPlayer/Label3.visible = false
	$Birdnocry.visible = false
	
	#txt4
	$Deernocry.visible = true
	$Node/AnimationPlayer/Label4.visible = true
	$Node/AnimationPlayer.play("4")
	await $Node/AnimationPlayer.animation_finished
	$Node/AnimationPlayer/Label4.visible = false
	$Deernocry.visible = false
	
	$Pfpplaceholder2.visible = false
	$Textplaceholder.visible = false
	$Node/AnimationPlayer/Label5.visible = true
	$Node/AnimationPlayer.play("5")
	await $Node/AnimationPlayer.animation_finished
	$Node/AnimationPlayer/Label5.visible = false
	
	$Node/AnimationPlayer/Label6.visible = true
	$Node/AnimationPlayer.play("6")
	await $Node/AnimationPlayer.animation_finished
	$Node/AnimationPlayer/Label6.visible = false
	
	
	
	$Node/AnimationPlayer/Label7.visible = true
	$Node/AnimationPlayer.play("7")
	await $Node/AnimationPlayer.animation_finished
	
	get_tree().change_scene_to_file("res://Scenes/scene28.tscn")
	
	
	
	
