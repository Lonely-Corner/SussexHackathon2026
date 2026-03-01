extends Area2D

@export var zone = Node2D;
@export var finger = Node2D;

@export var leak = false;
@export var pickCondition = 0;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.set_visible(true);
	$Sprite2D2.set_visible(false);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	if pickCondition >= 3:
		$Sprite2D2.set_visible(true);
		leak = true;
		pickCondition = 0;
	if finger.nosePicked:
		leak = false;
		$Sprite2D2.set_visible(false)
	pass
