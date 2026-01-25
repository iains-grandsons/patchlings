extends CanvasLayer
signal continueGame
func displayMenu():
	#get_tree().paused = true
	show()
	
func _on_continue_pressed() -> void:
	hide()
	#get_tree().paused = false 
	emit_signal("continueGame")
func closeMenu():
	#get_tree().paused = false 
	hide()
func _ready() -> void:
	hide()
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_options") && visible == false:
		displayMenu()
	elif Input.is_action_just_pressed("ui_options") && visible == true:
		closeMenu()
