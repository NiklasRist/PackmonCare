extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Flacier"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["ice"]
	
	hp=29
	spd=15
	atk=25
	def=31
	
	onLevelupHp=30
	onLevelupSpd=14
	onLevelupAtk=24
	onLevelupDef=32

func _ready():
	pass
