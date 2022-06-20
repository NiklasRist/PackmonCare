extends Node2D
const BattleStart = preload("res://Tilemap/ChangeToBattle.tres.gd")
var Battle = BattleStart.new()
const PlayerPosition = preload("res://player.gd")
var player = PlayerPosition.new()
func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
	  get_tree().quit()
	if Battle.changeToBattle() && Battle.autotile_get_icon_coordinate(1) == player.position:
		get_tree().change_scene("res://battle/battle/Battle.tscn")
