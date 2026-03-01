extends Node2D

@export var zone = Node2D;

@onready var heartsContainer = $CanvasLayer/HeartsContainer
@export var speed = 5;

var plant_instances: Array

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	heartsContainer.setMaxHearts(3)
	
	spawnPlant("flower", 1500)
	spawnPlant("flower", 1700)
	spawnPlant("weed", 2000)
	spawnPlant("flower", 2200)
	spawnPlant("flower", 2500)
	spawnPlant("flower", 3000)
	spawnPlant("flower", 3500)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	heartsContainer.updateHearts(zone.currentHealth)
	
	for i in plant_instances:
		i.position -= Vector2(speed, 0)
	pass
	
func spawnPlant(type: String, pos: float):
	if type == "flower":
		var flower = preload("res://Scenes/Flower.tscn")
		var flowerInstance = flower.instantiate()
		add_child(flowerInstance)
		flowerInstance.position = Vector2(pos, 500)
		plant_instances.append(flowerInstance)
	elif type == "weed":
		var weed = preload("res://Scenes/Weed.tscn")
		var weedInstance = weed.instantiate()
		add_child(weedInstance)
		weedInstance.position = Vector2(pos, 500)
		plant_instances.append(weedInstance)
