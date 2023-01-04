extends Node

var tasks  = []
var tasks_done = []

signal add_Task(task)
signal delete_Task(task_id)
signal updateTask(task_id, new_progress)


func addProgress(task_id : int, progress : int):
	for task in tasks:
		if task._task_id == task_id:
			if task.add_progress(progress):
				tasks.remove(task)
				tasks_done.append(task)
			emit_signal("updateTask", task_id, task.get_progress())

			
func addTask(task_id : int):
	
	var task_dic = TaskMap.get_task(task_id)
	var task = Task.new(task_id, task_dic.description, task_dic.max_progress)
	tasks.append(task)
	emit_signal("add_Task", task)
