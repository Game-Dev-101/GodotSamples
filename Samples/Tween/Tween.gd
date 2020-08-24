extends Node2D

onready var tw = $"Tween"
onready var spr = $"Sprite"
onready var spr2 = $"Sprite2"
onready var lbl = $"Label"

#Use this to quickly see the different effect of Tween methods, for further info refer to the docs


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(false)
	pass # Replace with function body.


func _followMethod():
	tw.follow_method(spr, "set_position", spr.get_position(), spr2, "get_position", 0.5, Tween.TRANS_QUINT, Tween.EASE_OUT, 0)
	tw.start()
	pass


func _followProperty():
	tw.follow_property(spr, "position", spr.get_position(), spr2, "position", 0.5, Tween.TRANS_QUINT, Tween.EASE_OUT, 0)
	tw.start()
	pass


func _interpolateCallback():
	tw.interpolate_callback(self, 3, "_Method", "X")
	tw.start()
	pass


func _interpolateMethod():
	tw.interpolate_method(self, "_Method", 0, 5, 7, Tween.TRANS_QUINT, Tween.EASE_OUT, 0)
	tw.start()
	pass

func _interpolateProperty():
	tw.interpolate_property(spr, "position", spr.get_position(), spr.get_position()+Vector2(200,0), 5, Tween.TRANS_QUINT, Tween.EASE_OUT, 0)
	tw.start()
	pass

func _targetingMethod():
	tw.targeting_method(spr, "set_position", spr2, "get_position", spr2.get_position(), 0.5, Tween.TRANS_QUINT, Tween.EASE_OUT, 0)
	tw.start()
	pass

func _targetingProperty():
	tw.targeting_property(spr, "position", spr2, "position", spr2.get_position(), 0.5, Tween.TRANS_QUINT, Tween.EASE_OUT, 0)
	tw.start()
	pass

func _Method(x):
	lbl.set_text("Ding "+str(x))
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	#UNCOMMENT ONLY ONE OF THE FOLLOWING METHODS THEN PRESS Turn On _physics_process(delta) BUTTON
	#self._followMethod()
	#self._followProperty()
	#self._targetingMethod()
	#self._targetingProperty()
	pass


func _on_Button_toggled(button_pressed):
	if button_pressed == true:
		set_physics_process(true)
	else:
		set_physics_process(false)
	pass # Replace with function body.


func _on_Button2_pressed():
	self._interpolateCallback()
	pass # Replace with function body.


func _on_Button3_pressed():
	self._interpolateMethod()
	pass # Replace with function body.


func _on_Button4_pressed():
	self._interpolateProperty()
	pass # Replace with function body.


func _on_Button5_pressed():
	spr.set_position(Vector2(220,144))
	pass # Replace with function body.


func _on_Button6_pressed():
	get_tree().change_scene("res://Main.tscn")
	pass # Replace with function body.
