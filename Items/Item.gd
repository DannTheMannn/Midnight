extends Resource
class_name Item

export(String) var name = ""
export(Texture) var texture

var amount = 1


func exec():
	print("execute Item")

func getAmount():
	return amount
func reduceAmount():
	amount -= 1
