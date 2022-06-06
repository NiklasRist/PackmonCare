extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Harmopla"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["flying", "steel"]
	
	hp=17
	spd=45
	atk=11
	def=22
	
	onLevelupHp=15
	onLevelupSpd=47
	onLevelupAtk=11
	onLevelupDef=27

func _ready():
	pass
