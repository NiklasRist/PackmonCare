extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered():
	#get_node(nodepath).inGrass = true
	return true

func _on_Area2D_body_exited():
	#get_node(nodepath).inGrass = false
	return false
