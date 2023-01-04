extends VBoxContainer


onready var item = preload("res://Task/TaskItem.tscn")

var tasks_ui = []


	

func _ready():
	TaskManager.connect("add_Task", self, "_on_add_Task")
	TaskManager.connect("delete_Task", self, "_on_delete_Task")
	TaskManager.connect("updateTask", self, "_on_updateTask")
	TaskManager.addTask(1)
	TaskManager.addTask(2)
	TaskManager.addTask(3)

func _on_add_Task(task: Task):
	var task_ui = createItemList()
	add_child(task_ui)
	task_ui.setTask(task)
	tasks_ui.append(task_ui)

func _on_delete_Task(task_id: int):
	for ui in tasks_ui:
		if ui.task_id == task_id:
			ui.	queue_free()

func _on_updateTask(task_id: int, new_progress: int):
	for ui in tasks_ui:
		if ui.task_id == task_id:
			ui.setProgress(new_progress)


	
func createItemList():
	var my_scene_instance = item.instance()
	my_scene_instance.rect_min_size = Vector2(100, 20)
	return my_scene_instance


