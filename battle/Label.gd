extends Label

const attack = preload("res://packmon/attacken/basic/fast punch.gd")
var attack1 = attack.new()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	text=attack1.attackname


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
