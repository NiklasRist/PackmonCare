extends Button


const attack = preload("res://packmon/attacken/basic/fast punch.gd")
var attack1 = attack.new()

const battl = preload("res://battle/Battle.gd")
var battle = battl.new()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	text=attack1.attackname


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	battle._do_damage(battle.Packhp)
