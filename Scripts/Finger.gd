extends Node2D

var toggled = false;

var nosein = Vector2(232, 200)
var noseout = Vector2(232, 220)
var touchflower = Vector2(168, 420)
var flowerneutral =  Vector2(168, 360)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("enter") && toggled == false:
		toggled = true;
		rotation += PI
	elif Input.is_action_just_pressed("enter") && toggled == true:
		toggled = false;
		rotation += PI

	if toggled == false:
		position = flowerneutral;
		if Input.is_action_pressed("space"):
			position = touchflower;
		else:
			position = flowerneutral;
	elif toggled == true:
		position = noseout;
		if Input.is_action_pressed("space"):
			position = nosein;
		else:
			position = noseout;
	pass
