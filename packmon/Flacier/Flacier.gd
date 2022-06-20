extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Flacier"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["ice"]
	attackenInBesitz=["fast punch", "", "", ""]
	
	hp=29
	spd=15
	atk=25
	def=31
	
	onLevelupHp=30
	onLevelupSpd=14
	onLevelupAtk=24
	onLevelupDef=32
	
	texture=load("res://packmon/Packmon images/Flacier/Flacier.png")
func _ready():
	pass
