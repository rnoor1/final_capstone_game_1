extends Area2D

@export var value: int = 50

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		TaskManager.add_coins(value)
		queue_free()
