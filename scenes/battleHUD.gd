extends CanvasLayer
signal playerAttack1
signal playerAttack2

	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_attack_pressed() -> void:
	print("attack")
	playerAttack1.emit()
	
	
	#hit enemy for 10 * random number between 0.3 - 1.2 pass # Replace with function body.
func _on_heal_pressed() -> void:
	print("heal")
	playerAttack2.emit()

func _on_items_pressed() -> void:
	#display items hud send signal to items menu 
	pass # Replace with function body.
func _on_flee_pressed() -> void:
	#go back to previous scene 
	pass # Replace with function body.
