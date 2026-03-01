extends Node2D

@export var nose = Node2D;

var toggled = false;
@export var nosePicked = true;

var nosein = Vector2(232, 200)
var noseout = Vector2(232, 220)
var touchflower = Vector2(168, 360)
var flowerneutral = Vector2(168, 340)

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
			if nose.leak:
				nosePicked = true;
			else:
				nosePicked = false;
		else:
			position = noseout;

	pass
