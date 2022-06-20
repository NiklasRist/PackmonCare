extends "res://packmon/attacken/Attacken.gd"

func _init():
	attackname="HP transformation"
	dmgp=0.65
	prob=0.9
	atkLoad=2
	dur=1
	rep=0
	hpChange=[0.1*dmg, 0]
	prio=10
	target=0
	changetarget=[false, false, false, false, false, false, true, false]
	
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
