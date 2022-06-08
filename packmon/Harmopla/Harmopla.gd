extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Harmopla"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["flying", "steel"]
	attackenInBesitz=["fast punch", "", "", ""]
	
	hp=17
	spd=45
	atk=11
	def=22
	
	onLevelupHp=15
	onLevelupSpd=47
	onLevelupAtk=11
	onLevelupDef=27
	
	texture=load("res://packmon/Packmon images/Harmopla/Harmopla.png")
func _ready():
	pass
