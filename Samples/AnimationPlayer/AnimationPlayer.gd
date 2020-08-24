extends Node2D

onready var anim = $"AnimationPlayer"
onready var spr = $"Sprite"
onready var lbl = $"Label"
onready var lbl2 = $"Label2"
var texture = preload("res://icon.png")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	anim.play("Modulate")
	pass # Replace with function body.


func _on_Button2_pressed():
	anim.play("Offset")
	yield(anim,"animation_finished")
	lbl.set_text(str(spr.get_offset()))
	pass # Replace with function body.


func _on_Button3_pressed():
	anim.play("Position")
	yield(anim, "animation_finished")
	lbl2.set_text(str(spr.get_position()))
	pass # Replace with function body.


func _on_Button4_pressed():
	anim.play("Texture")
	pass # Replace with function body.


func _on_Button5_pressed():
	anim.play("Z Index")
	pass # Replace with function body.


func _on_Button6_pressed():
	spr.set_texture(texture)
	spr.set_position(Vector2(136, 240))
	spr.set_offset(Vector2(0,0))
	spr.set_z_index(0)
	spr.set_modulate(Color(1,1,1,1))
	lbl.set_text("Offset")
	lbl2.set_text("Position")
	pass # Replace with function body.


func _on_Button7_pressed():
	get_tree().change_scene("res://Main.tscn")
	pass # Replace with function body.
