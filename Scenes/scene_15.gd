extends Node2D




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CharacterBody2D.visible = false
	$Node2/AnimationPlayer/Label.visible = false
	$Node2/AnimationPlayer/Label2.visible = false
	$Node2/AnimationPlayer/Label3.visible = false
	$Node2/AnimationPlayer/Label4.visible = false
	$Node2/AnimationPlayer/Label5.visible = false
	$Pfpplaceholder2.visible = false
	beartext()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



#
func beartext():
	#txt1 
	$Node2/AnimationPlayer/Label.visible = true
	$Node2/AnimationPlayer.play("S15-text1")
	await $Node2/AnimationPlayer.animation_finished
	$Node2/AnimationPlayer/Label.visible = false
	print("p")
	
#text2
	$Node2/AnimationPlayer/Label2.visible = true
	$Node2/AnimationPlayer.play("S15-text2")
	await $Node2/AnimationPlayer.animation_finished
	$Node2/AnimationPlayer/Label2.visible = false
	
#txt3
	$Node2/AnimationPlayer/Label3.visible = true
	$Node2/AnimationPlayer.play("S15-text3")
	await $Node2/AnimationPlayer.animation_finished
	$Node2/AnimationPlayer/Label3.visible = false
	
#txt4
	$Node2/AnimationPlayer/Label4.visible = true
	$Node2/AnimationPlayer.play("S15-text4")
	await $Node2/AnimationPlayer.animation_finished
	$Node2/AnimationPlayer/Label4.visible = false
	
	#txt5
	$Node2/AnimationPlayer/Label5.visible = true
	$Node2/AnimationPlayer.play("S15-text5")
	await $Node2/AnimationPlayer.animation_finished
	$Node2/AnimationPlayer/Label5.visible = false
	$Robberpfp.visible = false
	$Pfpplaceholder.visible = false
	$Textplaceholder.visible = false
	await get_tree().create_timer(1.0).timeout

	animaltext()

func animaltext():
	$CharacterBody2D4.can_move = true
	$Textplaceholder.visible = true
	$Pfpplaceholder2.visible = true
	$Bunnypfp.visible = true
	$Node3/AnimationPlayer/Label.visible = true
	$Node3/AnimationPlayer.play("bunny")
	await $Node3/AnimationPlayer.animation_finished
	$Node3/AnimationPlayer/Label.visible = false
	$Bunnypfp.visible = false
	
	$Deerpfp.visible = true
	$Node3/AnimationPlayer/Label2.visible = true
	$Node3/AnimationPlayer.play("deer2")
	await $Node3/AnimationPlayer.animation_finished
	$Node3/AnimationPlayer/Label2.visible = false
	$Deerpfp.visible = false
	
	
	$Birdpfp.visible = true
	$Node3/AnimationPlayer/Label3.visible = true
	$Node3/AnimationPlayer.play("bird")
	await $Node3/AnimationPlayer.animation_finished
	$Node3/AnimationPlayer/Label3.visible = false
	$Birdpfp.visible = false
	beartalky2()
	
	
func beartalky2():
	$CharacterBody2D4.can_move = false
	$Pfpplaceholder2.visible = false
	$Pfpplaceholder.visible = true
	$Robberpfp.visible = true
	
	$Node4/AnimationPlayer/Label.visible = true
	$Node4/AnimationPlayer.play("1")
	await $Node4/AnimationPlayer.animation_finished
	$Node4/AnimationPlayer/Label.visible = false
	
	$Node4/AnimationPlayer/Label2.visible = true
	$Node4/AnimationPlayer.play("2")
	await $Node4/AnimationPlayer.animation_finished
	$Node4/AnimationPlayer/Label2.visible = false
	
	$Node4/AnimationPlayer/Label3.visible = true
	$Node4/AnimationPlayer.play("3")
	await $Node4/AnimationPlayer.animation_finished
	$Node4/AnimationPlayer/Label3.visible = false
	
	$Node4/AnimationPlayer/Label4.visible = true
	$Node4/AnimationPlayer.play("4")
	await $Node4/AnimationPlayer.animation_finished
	$Node4/AnimationPlayer/Label4.visible = false
	
	
	$Node4/AnimationPlayer/Label5.visible = true
	$Node4/AnimationPlayer.play("5")
	await $Node4/AnimationPlayer.animation_finished
	$Node4/AnimationPlayer/Label5.visible = false
	$Pfpplaceholder.visible = false
	$Robberpfp.visible = false
	$Textplaceholder.visible = false
	exit()
	
func exit():
	$CharacterBody2D4.can_move = true
	$Label6.visible = true
	$ExitTrigger.text_done()

	
		


#func _on_exit_trigger_body_entered(body: Node2D) -> void:
	#if body.name == "CharacterBody2D4":
		#get_tree().change_scene_to_file("res://Scenes/scene16.tscn")
