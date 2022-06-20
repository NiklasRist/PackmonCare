extends "res://packmon/attacken/Attacken.gd"

func _init():
	attackname="Weaken Scales"
	dmgp=0
	prob=1
	atkLoad=0
	dur=1
	rep=0
	defChange=[0, -0.1]
	prio=10
	target=0
	changetarget=[false, false, false, true, false, false, false, false]
