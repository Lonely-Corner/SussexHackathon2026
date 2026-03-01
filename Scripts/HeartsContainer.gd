extends HBoxContainer

@onready var heartGUIClass = preload("res://Scenes/HeartGUI.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func setMaxHearts(max: int):
	for i in range(max):
		var heart = heartGUIClass.instantiate()
		add_child(heart)
		
func updateHearts(currentHealth: int):
	var hearts = get_children()
	
	for i in range(hearts.size()):
		var heart_value = currentHealth - i * 2
		
		if heart_value >= 2:
			hearts[i].update(2) # full
		elif heart_value == 1:
			hearts[i].update(1) # half
		else:
			hearts[i].update(0) # empty
