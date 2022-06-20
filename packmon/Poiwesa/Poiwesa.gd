extends "res://packmon/Packmon.gd"

func _init():
	Packmonname="Poiwesa"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["poison"]
	attackenInBesitz=["scary bite", "hardening", "", ""]
	
	hp=24
	spd=26
	atk=33
	def=17
	
	onLevelupHp=26
	onLevelupSpd=27
	onLevelupAtk=35
	onLevelupDef=10
	
	texture = load("res://packmon/Packmon images/Poiwesa/Powesa.png")
func _ready():
	pass
