extends Area2D

var combo = 0
var current_flower = null

func _on_area_entered(area):
	if area.has_method("score"):
		current_flower = area

func _on_area_exited(area):
	if area == current_flower:
		if not area.was_pressed() && area.checkType() == false:
			combo = 0
			print(combo)
		current_flower = null

func _process(_delta):
	if current_flower and Input.is_action_just_pressed("space"):
		var result = current_flower.score()

		if result == 1:
			combo += 1
		else:
			combo = 0

		print(combo)
