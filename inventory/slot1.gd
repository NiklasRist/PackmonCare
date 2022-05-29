extends Panel

var scene = preload("res://items/Item.tscn")
var item=null
var rng = RandomNumberGenerator.new()
var rand = null

func _ready():
	rng.randomize()
	rand = int(rng.randf_range(0, 1)*10)
	if rand%2 == 0:
		item = scene.instance()
		add_child(item)

func drag():
	remove_child(item)
	var inventoryNode = find_parent("Inventory")
	inventoryNode.add_child(item)
	item=null

func drop(newItem):
	item=newItem
	item.position = Vector2(0, 0)
	var inventoryNode = find_parent("Inventory")
	inventoryNode.remove_child(item)
	item=newItem
	add_child(item)
