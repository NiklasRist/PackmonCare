extends "res://packmon/Packmon.gd"

func _ready():
	Packmonname="Mastermind"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["psychic"]
	
	hp=47
	spd=23
	atk=18
	def=12
	
	onLevelupHp=26
	onLevelupSpd=22
	onLevelupAtk=28
	onLevelupDef=24
