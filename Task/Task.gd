class_name Task
	
var _progress
var _task_id
var _task_description
var _max_progress



func _init(task_id : int, task_description : String, max_progress : int):
	_task_id = task_id
	_progress = 0
	_task_description = task_description
	_max_progress = max_progress
	
	
func add_progress(new_progress: int):
	_progress += new_progress

func get_progress():
	return _progress
