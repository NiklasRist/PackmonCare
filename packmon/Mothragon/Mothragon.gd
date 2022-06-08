extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Mothragon"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["ground", "bug"]
	attackenInBesitz=["fast punch", "", "", ""]
	
	hp=31
	spd=15
	atk=36
	def=20
	
	onLevelupHp=30
	onLevelupSpd=16
	onLevelupAtk=37
	onLevelupDef=19

	texture=load("res://packmon/Packmon images/Mothragon/Mothragon, Boden, Käfer.png")
func _ready():
	pass
