extends GridContainer

var inventory = preload("res://Inventar/Inventory.tres")

func _ready():
	inventory.connect("items_changed", self, "_on_items_changed")
	inventory.make_items_unique()
	update_inventory_display()	
	
func update_inventory_display():
	for item_index in inventory.items.size():
		update_inventory_slot_display(item_index)

func update_inventory_slot_display(item_index):
	var inventorySlotDisplay = get_child(item_index)
	var item = inventory.items[item_index]
	inventorySlotDisplay.display_item(item)

func _on_items_changed(indexes):
	for item_index in indexes:
		update_inventory_slot_display(item_index)

func _unhandled_input(event):
	if event.is_action_released("ui_left_mouse"):
		if inventory.drag_data is Dictionary:
			inventory.set_item(inventory.drag_data.item_index, inventory.drag_data.item)

func _add_item(item : Item):
	inventory.set_item(0, item);


func _input(event : InputEvent):
	if event is InputEventKey and not event.echo:
		var code = event.scancode - 49
		if code >= 0 and code <= 9:
			if event.pressed:
				inventory.useItem(code)

