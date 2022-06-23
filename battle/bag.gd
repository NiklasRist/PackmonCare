extends TextureButton

const player_=preload("res://player/player.gd")
var player = player_.new()

func _pressed():
	#get_tree().change_scene("res://inventory/Inventory.tscn")
	#get_parent().get_parent().get_parent().get_child(5).visible = true
	player.packmon_space[1]="HuHu"
	print(player.packmon_space)
