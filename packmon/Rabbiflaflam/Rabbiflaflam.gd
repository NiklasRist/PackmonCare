extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Rabbiflaflam"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["normal", "fire"]
	attackenInBesitz=["fast punch", "meditation", "", ""]
	
	hp=21
	spd=28
	atk=30
	def=21
	
	onLevelupHp=21
	onLevelupSpd=29
	onLevelupAtk=31
	onLevelupDef=19
	
	texture=load("res://packmon/Packmon images/Rabbiflaflam/Rabbiflaflam FireNormal.png")
func _ready():
	pass
