extends Panel

#const Packmon = preload("res://packmon/Packmon.gd") # Relative path
#onready var PackmonVar = Packmon.new()

const scene = preload("res://items/Item.tscn")

func _ready():
	var instance = scene.instance()
	add_child(instance)
