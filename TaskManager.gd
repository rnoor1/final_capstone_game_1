extends Node

var coins: int = 0
var active_task: String = ""
var completed_tasks: Array[String] = []
var near_vendor := false

func add_coins(amount: int) -> void:
	coins += amount
	print("Coins:", coins)

func start_task(task_id: String) -> void:
	if task_id in completed_tasks:
		return
	active_task = task_id
	print("Task started:", task_id)

func complete_task(task_id: String, reward: int) -> void:
	if task_id in completed_tasks:
		return

	completed_tasks.append(task_id)
	active_task = ""
	add_coins(reward)

	print("Task completed:", task_id)
