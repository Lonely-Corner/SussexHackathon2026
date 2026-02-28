extends Area2D

@export var isWeed = false
var pressed = false

func score():
	if pressed:
		return 0

	pressed = true

	if isWeed:
		print("oofy")
		return -1
	else:
		print("score")
		return 1

func checkType():
	return isWeed;

func was_pressed():
	return pressed
