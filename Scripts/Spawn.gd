extends Node2D
var flower = preload("res://Scenes/Flower.tscn")
var flowerInstance = flower.instantiate()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(flowerInstance)
	flowerInstance.position = Vector2(1500, 500)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	flowerInstance.position += Vector2(-5, 0)
	pass
