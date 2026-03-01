extends Panel

@onready var sprite = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update(type: int):
	if type == 2:
		sprite.frame = 2
	elif type == 1:
		sprite.frame = 1
	else:
		sprite.frame = 0
