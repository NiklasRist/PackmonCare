extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Eleceel"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["electric", "water"]
	attackenInBesitz=["fast punch", "", "", ""]
	
	hp=36
	spd=33
	atk=21
	def=10
	
	onLevelupHp=36
	onLevelupSpd=31
	onLevelupAtk=22
	onLevelupDef=11

	texture=load("res://packmon/Packmon images/Eleceel/Eleceel.png")
func _ready():
	pass
