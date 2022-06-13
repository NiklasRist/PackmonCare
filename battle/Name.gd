extends Label

const Rabbiflaflam = preload("res://packmon/Rabbiflaflam/Rabbiflaflam.gd") # Relative path
onready var RabbiflaflamVar = Rabbiflaflam.new()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	text=RabbiflaflamVar.Packmonname


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
