extends ProgressBar

const Rabbiflaflam = preload("res://packmon/Rabbiflaflam/Rabbiflaflam.gd") # Relative path
onready var RabbiflaflamVar = Rabbiflaflam.new()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	value=RabbiflaflamVar.hp
