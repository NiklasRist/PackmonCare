extends TextureButton

const player_=preload("res://player/player.gd")
var player = player_.new()

var num =1

func _pressed():
	player.packmon_space[0][num]=get_parent().get_parent().get_parent().Packname
	player.packmon_space[1][num]=get_parent().get_parent().get_parent().Packlvl
	player.packmon_space[2][num]=get_parent().get_parent().get_parent().Packattacks
	print(player.packmon_space)
