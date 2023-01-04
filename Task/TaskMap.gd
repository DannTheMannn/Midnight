extends Node


const map = {

	1 : {
		"description": "kill bats",
		"max_progress": 3},
	
	2 : {
		"description": "roll",
		"max_progress": 5},
	3 : {
		"description": "getItem",
		"max_progress": 1}
}


func get_task(id : int):
	return map[id];
