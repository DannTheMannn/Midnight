extends Node2D

var item;
var icon;
var itemIcon

onready var res = preload("res://Items/Sword.tres")

# warning-ignore:unused_argument
func init(itemID : Resource):
	pass
	#item = res;
	#var itemd = ItemInfo.itemDict[itemID];
	#var itemName = itemd.itemName;
	#itemIcon = itemd.itemIcon;
	#var itemValue = itemd.itemValue;
	#var slotType = itemd.slotType;
	#var ItemClass = itemd.object;
	#item = ItemClass.new(itemID, itemName, itemIcon, null, itemValue, slotType);

func _ready():
	#icon = $icon;
	#icon.texture = itemIcon;
	pass
	
func delete():
	rpc("deleteItem")
	
func getRessource():
	return res;
	
remotesync func deleteItem():
	queue_free()





