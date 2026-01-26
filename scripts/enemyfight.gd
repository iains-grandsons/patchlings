extends Node2D
signal playerTurnStart(move)
var attack = ['d', 10]
var heal = ['h', 10]
var health = 60.0
var rng = RandomNumberGenerator.new()

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_battle_handler_enemy_turn() -> void:
	await get_tree().create_timer(1.0).timeout
	var my_random_number = rng.randf_range(0.0, 10.0)
	if (my_random_number < 3):
		playerTurnStart.emit(heal)
	else:
		playerTurnStart.emit(attack)
	pass # Replace with function body.
