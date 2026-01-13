extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel") and get_tree().paused == false:
		$HUD.displayMenu()
	elif Input.is_action_just_pressed("ui_cancel") and get_tree().paused == true:
		$HUD.closeMenu()
	
