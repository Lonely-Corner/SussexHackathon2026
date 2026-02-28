extends Area2D

var combo = 0
var currentPlant = null
var currentHealth = 6;

func _on_area_entered(area):
	if area.has_method("score"):
		currentPlant = area

func _on_area_exited(area):
	if area == currentPlant:
		if not area.was_pressed() && area.checkType() == false:
			combo = 0
			print(combo)
		currentPlant = null

func _process(_delta):
	if currentPlant and Input.is_action_just_pressed("space"):
		var result = currentPlant.score()

		if result == 1:
			currentHealth -= 1
			combo += 1
		else:
			currentHealth -= 2
			combo = 0
		
		print("health = ", currentHealth)
		print("combo = ", combo)
