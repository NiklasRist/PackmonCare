extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Voiradon"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["fight","ghost"]
	
	hp=19
	spd=20
	atk=43
	def=18
	
	onLevelupHp=19
	onLevelupSpd=19
	onLevelupAtk=40
	onLevelupDef=22

func _ready():
	pass
