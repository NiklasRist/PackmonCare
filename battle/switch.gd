extends TextureButton


func _pressed():
	#get_tree().change_scene("res://inventory/Inventory.tscn")
	get_parent().get_parent().get_parent().get_child(5).visible = true
