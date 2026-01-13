extends CanvasLayer
signal continueGame
func displayMenu():
	#get_tree().paused = true
	show()
func on_continue_button_pressed():
	emit_signal("continueGame")

func _on_continue_pressed() -> void:
	hide()
	#get_tree().paused = false 
	emit_signal("continueGame")
