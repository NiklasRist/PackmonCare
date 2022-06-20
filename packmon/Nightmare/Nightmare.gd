extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Nightmare"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["dark"]
	attackenInBesitz=["fast punch", "", "", ""]
	
	hp=18
	spd=26
	atk=40
	def=18
	
	onLevelupHp=10
	onLevelupSpd=22
	onLevelupAtk=44
	onLevelupDef=20

	texture= load("")
func _ready():
	pass
