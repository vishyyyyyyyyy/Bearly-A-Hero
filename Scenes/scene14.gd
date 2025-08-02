extends Node2D

var auto_moving = false
var speed = 200.0



func _ready():
	$bearFox.can_move = false
	$Label/AnimationPlayer.play("S14-text1")
	await get_tree().create_timer(4.0).timeout
	$Label.visible = false
	$Label2.visible = true
	$Label2/AnimationPlayer.play("S14-text2")
	await get_tree().create_timer(3.0).timeout
	$Pfpplaceholder2.visible = false
	$Foxpfp.visible = false
	$Label2.visible = false
	$Label3.visible = true
	$Pfpplaceholder.visible= false
	$Robberpfp.visible = false
	$Textplaceholder.visible = false
	$bearFox.can_move = true


@onready var animated_sprite_2d: AnimatedSprite2D = $CharacterBody2D2/AnimatedSprite2D
@onready var anim: AnimatedSprite2D = $bearFox/anim
@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D




func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	animated_sprite_2d.flip_h = false # Replace with function body.
	animated_sprite_2d.play("attack")
	$bearFox/anim.play("death")
	collision_shape_2d.disabled = true
	text()
	
func text():
	#text 4
	await get_tree().create_timer(1.0).timeout
	$Label3.visible = false
	$Label4.visible = true	
	$Label4/AnimationPlayer.play("s14-text3")
	$Pfpplaceholder.visible= true
	$Robberpfp2.visible = true
	$Textplaceholder.visible = true
	
	#text 8 REAL  IS USPPOSED BE HERE IS FIRST FOXIE LINe
	await get_tree().create_timer(3.0).timeout
	$Label4.visible = false
	$Label8.visible = true	
	$Pfpplaceholder.visible = false
	$Robberpfp2.visible = false
	$Label8/AnimationPlayer.play("S14-text5")
	$Pfpplaceholder2.visible = true
	$Foxpfp.visible= true
	
	
	#text 5
	await get_tree().create_timer(3.0).timeout
	$Label8.visible = false
	$Label5.visible = true	
	$Label5/AnimationPlayer.play("S14-text5")
	
	
	#text 6
	await get_tree().create_timer(3.0).timeout
	$Label5.visible = false
	$Label6.visible = true	
	$Label6/AnimationPlayer.play("S14-text6")
	
	
	#text 7 
	await get_tree().create_timer(4.0).timeout
	$Label6.visible = false
	$Label7.visible = true	
	$Label7/AnimationPlayer.play("S14-text7")
	await get_tree().create_timer(4.0).timeout
	$bearFox.start_auto_run()
	

	
