extends CanvasLayer
signal playerAttack1
signal playerAttack2
signal flee
signal updatePlayerHealth(playerHealth)
signal updateEnemyHealth(enemyHealth)
	
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
	print("flee")
	flee.emit()


func _on_battle_handler_update_health_bars(playerHealth: Variant, enemyHealth: Variant) -> void:
	updatePlayerHealth.emit(playerHealth)
	updateEnemyHealth.emit(enemyHealth)
	pass # Replace with function body.
