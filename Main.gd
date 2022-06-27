extends Node2D

const player_=preload("res://player/player.gd")
var player = player_.new()

func _process(_delta):
	
	if Input.is_action_pressed("ui_cancel"):
	  get_tree().quit()
	
	if Input.is_action_just_pressed("Debug_print"):
		print(player.packmon_space)

