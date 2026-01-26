extends Node

signal updateHealthBars(playerHealth, enemyHealth)
signal enemyTurn

var enemyHealth = 60
var playerTurn = true
var playerHealth = null
var playerAttack1 = null
var playerAttack2 = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	updateHealthBars.emit(playerHealth, enemyHealth)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(enemyHealth <= 0 || playerHealth <= 0):
		get_tree().change_scene_to_file("res://scenes/area1.tscn")
	pass
func _on_player_update_stats(health, attack1, attack2) -> void:
	playerHealth = health
	playerAttack1 = attack1
	playerAttack2 = attack2
	print(playerHealth)
	print(attack1)
	print(attack2)

func _on_canvas_layer_player_attack_1() -> void:
	if (playerTurn):
		if (playerAttack1[0] == 'd'):
			enemyHealth -= playerAttack1[1]
			playerTurn = false
			print(enemyHealth)
			enemyTurn.emit()
		elif (playerAttack1[0] == 'h'):
			playerHealth += playerAttack1[1]
			playerTurn = false
			print(playerHealth)
			enemyTurn.emit()
	updateHealthBars.emit(playerHealth, enemyHealth)
	pass # Replace with function body.


func _on_canvas_layer_player_attack_2() -> void:
	if (playerTurn):
		if (playerAttack2[0] == 'd'):
			enemyHealth -= playerAttack2[1]
			playerTurn = false
			print(enemyHealth)
			enemyTurn.emit()
		elif (playerAttack2[0] == 'h'):
			playerHealth += playerAttack2[1]
			playerTurn = false
			print(playerHealth)
			enemyTurn.emit()
	updateHealthBars.emit(playerHealth, enemyHealth)
	pass # Replace with function body.


func _on_battle_hud_flee() -> void:
	get_tree().change_scene_to_file("res://scenes/area1.tscn")
	pass
