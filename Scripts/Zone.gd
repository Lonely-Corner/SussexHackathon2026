extends Area2D

@export var nose = Node2D;
@export var finger = Node2D;

@export var currentHealth = 6;
@export var combo = 0
@export var score = 0;
var currentPlant = null

func _on_area_entered(area):
	if area.has_method("score"):
		currentPlant = area

func _on_area_exited(area):
	if area == currentPlant:
		if not area.was_pressed() && area.checkType() == false:
			combo = 0
			currentHealth -= 1
			nose.pickCondition = 0;
		currentPlant = null

func _process(_delta):
	if currentPlant and Input.is_action_just_pressed("space"):
		var result = currentPlant.score()

		if result == 1:
			if !finger.toggled:
				combo += 1
				score += (1 * finger.multiplier);
				nose.pickCondition += 1;
		else:
			currentHealth -= 2
			combo = 0
		
	$"../ComboCounter".text = "combo: " + str(combo)
	$"../ScoreCounter".text = "score: " + str(score)
	
		#print("health = ", currentHealth)
