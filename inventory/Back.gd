extends Button


func _pressed():
	#get_tree().change_scene("res://Main.tscn")
	get_parent().get_parent().visible=false
