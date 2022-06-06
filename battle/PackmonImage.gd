extends TextureRect

const packmon = preload("res://packmon/Rabbiflaflam/Rabbiflaflam.gd")
var packvar = packmon.new()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	texture=packvar.texture


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
