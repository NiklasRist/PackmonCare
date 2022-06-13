extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Torblast"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["water", "rock"]
	attackenInBesitz=["tail whip", "weaken scales", "", ""]
	
	hp=37
	spd=12
	atk=18
	def=33
	
	onLevelupHp=38
	onLevelupSpd=9
	onLevelupAtk=21
	onLevelupDef=32
	
	texture=load("res://packmon/Packmon images/Torblast/Torblast, water rock.png")
func _ready():
	pass
