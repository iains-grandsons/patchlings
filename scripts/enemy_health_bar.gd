extends ProgressBar


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_canvas_layer_update_enemy_health(enemyHealth: Variant) -> void:
	value = enemyHealth
	pass # Replace with function body.
