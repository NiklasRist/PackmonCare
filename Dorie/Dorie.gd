extends "res://packmon/Packmon.gd"


# Called when the node enters the scene tree for the first time.
func _ready():
	Packmonname="Dorie"
	
	lvl=1
	ep=0
	epRequired=12
	type = ["water"]
	
	hp=42
	spd=18
	atk=19
	def=21
	
	onLevelupHp=41
	onLevelupSpd=19
	onLevelupAtk=18
	onLevelupDef=22
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
