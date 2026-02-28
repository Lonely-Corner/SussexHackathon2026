extends Area2D

@export var isWeed = false;

var pressed = false;
	
func score() -> void:
	if !pressed and !isWeed:
		print("score");
	elif isWeed:
		print("oofy");
	pressed = true;
	pass;
