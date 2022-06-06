extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Torblast"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["water", "rock"]
	
	hp=37
	spd=12
	atk=18
	def=33
	
	onLevelupHp=38
	onLevelupSpd=9
	onLevelupAtk=21
	onLevelupDef=32

func _ready():
	pass
