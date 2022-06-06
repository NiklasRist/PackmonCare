extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Gavlarnton"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["ghost"]
	
	hp=12
	spd=28
	atk=37
	def=13
	
	onLevelupHp=21
	onLevelupSpd=26
	onLevelupAtk=34
	onLevelupDef=19

func _ready():
	pass
