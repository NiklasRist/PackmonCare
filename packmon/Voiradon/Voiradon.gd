extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Voiradon"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["fight","ghost"]
	attackenInBesitz=["fast punch", "", "", ""]
	
	hp=19
	spd=20
	atk=43
	def=18
	
	onLevelupHp=19
	onLevelupSpd=19
	onLevelupAtk=40
	onLevelupDef=22
	
	texture=load("res://packmon/Packmon images/Voiradon/Voiradon, fight, ghost.png")
func _ready():
	pass
