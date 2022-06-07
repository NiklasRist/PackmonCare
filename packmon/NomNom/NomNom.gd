extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="NomNom"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["ghost"]
	
	hp=12
	spd=30
	atk=22
	def=38
	
	onLevelupHp=15
	onLevelupSpd=29
	onLevelupAtk=20
	onLevelupDef=32

func _ready():
	pass
