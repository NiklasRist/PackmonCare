extends "res://packmon/Packmon.gd"

func _ready():
	Packmonname="Mothragon"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["ground", "bug"]
	
	hp=31
	spd=15
	atk=36
	def=20
	
	onLevelupHp=30
	onLevelupSpd=16
	onLevelupAtk=37
	onLevelupDef=19
