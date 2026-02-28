extends Area2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	for area in get_overlapping_areas():
		if Input.is_action_just_pressed("space") and area.has_method("score"):
			area.score();
	pass
