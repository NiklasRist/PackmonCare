extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Blazesect"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["bug","fire"]
	attackenInBesitz=["fast punch", "", "", ""]
	
	hp=18
	spd=23
	atk=37
	def=24
	
	onLevelupHp=12
	onLevelupSpd=22
	onLevelupAtk=34
	onLevelupDef=28
	
	texture=load("res://packmon/Packmon images/Blazesect/Blazesect.png")
func _ready():
	pass # Replace with function body.

