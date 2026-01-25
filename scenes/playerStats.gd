extends Node2D
signal updateStats(health, attack1, attack2)
var health = 60
var attack1 = ['d', 10]
var attack2 = ['h', 5]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	updateStats.emit(health, attack1, attack2)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
