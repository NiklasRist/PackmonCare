extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Golec"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["electric", "steel"]
	attackenInBesitz=["fast punch", "hardening", "", ""]
	
	hp=30
	spd=28
	atk=12
	def=30
	
	onLevelupHp=33
	onLevelupSpd=27
	onLevelupAtk=12
	onLevelupDef=28
	
	texture=load("res://packmon/Packmon images/Golec/Golec.png")
func _ready():
	pass
