extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Mastermind"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["psychic"]
	attackenInBesitz=["HP transformation", "meditation", "", ""]
		
	hp=47
	spd=23
	atk=18
	def=12
	
	onLevelupHp=26
	onLevelupSpd=22
	onLevelupAtk=28
	onLevelupDef=24

	texture=load("res://packmon/Packmon images/Mastermind/Mastermind.png")
func _ready():
	pass
