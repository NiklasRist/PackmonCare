extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Dragon type 1"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["dragon"]
	attackenInBesitz=["fast punch", "", "", ""]
	
	hp=33
	spd=10
	atk=25
	def=32
	
	onLevelupHp=34
	onLevelupSpd=9
	onLevelupAtk=26
	onLevelupDef=31
	
	texture=load("res://packmon/Packmon images/Dragon type 1/Dragon type 1.png")
func _ready():
	pass
