extends Area2D

@export var nose = Node2D;
@export var finger = Node2D;

@export var combo = 0
@export var score = 0;
var currentPlant = null
var currentHealth = 6;

func _on_area_entered(area):
	if area.has_method("score"):
		currentPlant = area

func _on_area_exited(area):
	if area == currentPlant:
		if not area.was_pressed() && area.checkType() == false:
			combo = 0
			currentHealth -= 1
			nose.pickCondition = 0;
			print(combo)
		currentPlant = null

func _process(_delta):
	if currentPlant and Input.is_action_just_pressed("space"):
		var result = currentPlant.score()

		if result == 1:
			combo += 1
			score += 1;
			nose.pickCondition += 1;
		else:
			currentHealth -= 2
			combo = 0
			
		if finger.nosePicked:
			score *= 2;
		
		print("health = ", currentHealth)
		print("combo = ", combo)
		print("score = ", score)
