extends Control

@onready var menu = load("res://Scenes/StartMenu.tscn")
var isPaused = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("esc"):
		isPaused = !isPaused
		get_tree().paused = isPaused
		set_visible(isPaused)
	pass


func _on_button_2_pressed() -> void:
	get_tree().paused = false
	set_visible(false);
	pass # Replace with function body.


func _on_button_pressed() -> void:
	get_tree().change_scene_to_packed(menu)
