extends Node
var enemyHealth = 60
var playerTurn = true
var playerHealth = null
var playerAttack1 = null
var playerAttack2 = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass
func _on_player_update_stats(health, attack1, attack2) -> void:
	playerHealth = health
	playerAttack1 = attack1
	playerAttack2 = attack2
	print(playerHealth)
	print(attack1)
	print(attack2)

func _on_canvas_layer_player_attack_1() -> void:
	if (playerAttack1[0] == 'd'):
		enemyHealth -= playerAttack1[1]
		print(enemyHealth)
	elif (playerAttack1[0] == 'h'):
		playerHealth += playerAttack1[1]
		print(playerHealth)
	pass # Replace with function body.


func _on_canvas_layer_player_attack_2() -> void:
	if (playerAttack2[0] == 'd'):
		enemyHealth -= playerAttack2[1]
		print(enemyHealth)
	elif (playerAttack2[0] == 'h'):
		playerHealth += playerAttack2[1]
		print(playerHealth)
	pass # Replace with function body.
