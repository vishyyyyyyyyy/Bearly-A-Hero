extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CharacterBody2D.visible = false
	$Node2/AnimationPlayer/Label.visible = false
	$Node2/AnimationPlayer/Label2.visible = false
	$Node2/AnimationPlayer/Label3.visible = false
	$Node2/AnimationPlayer/Label4.visible = false
	$Node2/AnimationPlayer/Label5.visible = false
	beartext()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




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
	animaltext()

func animaltext():
	$Node3/AnimationPlayer/Label.visible = true
	$Node3/AnimationPlayer.play("bunny")
