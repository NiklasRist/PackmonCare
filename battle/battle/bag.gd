extends TextureButton


func _pressed():
	get_tree().change_scene("res://inventory/Inventory.tscn")
