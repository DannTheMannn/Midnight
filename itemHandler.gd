extends Node2D


onready var player = $YSort/Player
onready var ui = $CanvasLayer/HealthUI


func _input(event : InputEvent):
	if event is InputEventKey:
		if event.is_action_pressed("ui_take"):
			var item = player.takeItem()
			if (item != null):
				ui.addItem(item.getRessource())

