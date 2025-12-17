extends Area2D

const TASK_ID := "sell_apple"
const REWARD := 10

var player_inside := false

func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _process(_delta):
	if player_inside and Input.is_action_just_pressed("interact"):
		handle_task()

func _on_body_entered(body):
	if body.is_in_group("player"):
		player_inside = true
		TaskManager.near_vendor = true
		print("👋 Vendor: Press E")

func _on_body_exited(body):
	if body.is_in_group("player"):
		player_inside = false
		TaskManager.near_vendor = false

func handle_task():
	# 🚫 Task already done
	if TASK_ID in TaskManager.completed_tasks:
		print("Vendor: You already sold an apple!")
		return

	# ▶ Start task
	if TaskManager.active_task == "":
		TaskManager.start_task(TASK_ID)
		print("📜 Task started: Sell 1 apple for 10 coins")
		return

	# ✔ Complete task
	if TaskManager.active_task == TASK_ID:
		if Inventory.has_item("apple"):
			Inventory.remove_item("apple", 1)

			# 🔊 Play sound
			$AudioStreamPlayer2D.play()

			# 🗑 Remove apple from world
			remove_apple_from_world()

			# 🪙 GIVE COINS + MARK COMPLETE (ONE PLACE ONLY)
			TaskManager.complete_task(TASK_ID, REWARD)

		else:
			print(" You don't have an apple yet!")

func remove_apple_from_world():
	var items = get_tree().get_nodes_in_group("world_items")
	for item in items:
		if item.item_id == "apple":
			item.queue_free()
			print("🍎 Apple removed from world")
			return
