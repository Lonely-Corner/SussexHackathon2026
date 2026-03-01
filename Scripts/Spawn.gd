extends Node2D

@export var zone = Node2D;

@onready var heartsContainer = $CanvasLayer/HeartsContainer
@export var speed = 5;

var plant_instances: Array

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	heartsContainer.setMaxHearts(3)
	
	spawnPlant("flower", 1196)
	spawnPlant("weed", 1468)
	spawnPlant("flower", 1672)
	spawnPlant("flower", 1740)
	spawnPlant("flower", 1808)
	spawnPlant("weed", 1944)
	spawnPlant("flower", 2080)
	
	spawnPlant("flower", 2284)
	spawnPlant("weed", 2556)
	spawnPlant("flower", 2760)
	spawnPlant("flower", 2828)
	spawnPlant("flower", 2896)
	spawnPlant("weed", 3032)
	spawnPlant("flower", 3168)
	
	spawnPlant("flower", 3372)
	spawnPlant("weed", 3644)
	spawnPlant("flower", 3848)
	spawnPlant("flower", 3916)
	spawnPlant("flower", 3984)
	spawnPlant("weed", 4120)
	spawnPlant("flower", 4256)
	
	spawnPlant("flower", 4460)
	spawnPlant("weed", 4732)
	spawnPlant("flower", 4936)
	spawnPlant("flower", 5004)
	spawnPlant("flower", 5072)
	spawnPlant("weed", 5208)
	spawnPlant("flower", 5344)
	
	spawnPlant("flower", 5548)
	spawnPlant("weed", 5820)
	spawnPlant("flower", 6024)
	spawnPlant("flower", 6092)
	spawnPlant("flower", 6160)
	spawnPlant("weed", 6296)
	spawnPlant("flower", 6432)
	
	spawnPlant("flower", 6568)
	spawnPlant("flower", 6704)
	spawnPlant("flower", 7112)
	spawnPlant("flower", 7180)
	spawnPlant("flower", 7316)
	spawnPlant("flower", 7452)
	spawnPlant("flower", 7588)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	heartsContainer.updateHearts(zone.currentHealth)
	
	if zone.currentHealth <= 0:
		get_tree().quit()  
	
	$Grass1.position -= Vector2(speed, 0)
	$Grass2.position -= Vector2(speed, 0)
	
	if $Grass1.position <= Vector2(-1152.0, 336):
		$Grass1.position = Vector2(1152, 336.0)
	if $Grass2.position <= Vector2(-1152.0, 336):
		$Grass2.position = Vector2(1152, 336.0)
	
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
