extends Panel


onready var description = $task_lable
onready var progress = $progress_lable
onready var max_progress = $max_progress_lable

var task_id



func setTask(task : Task):
	task_id = task._task_id
	setDescription(task._task_description)
	setMaxProgress(task._max_progress)
	setProgress(task._progress)

func setDescription(txt : String):
	description.text = txt

func setMaxProgress(p : int):
	max_progress.text = str(p)
	
func setProgress(p : int):
	progress.text = str(p)
	
	
func getTaskId():
	return task_id


