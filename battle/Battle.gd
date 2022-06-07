extends Control
var loaded=false
var userpack=false
var rand=RandomNumberGenerator.new()
var num

func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
	  get_tree().quit()
	if !loaded: #selects enemy packmon
		rand.randomize()
		num = rand.randi_range(0, 18)
		match num:
			0:
				pass
			1:
				pass
			2:
				pass
			3:
				pass
			4:
				pass
			5:
				pass
			6:
				pass
			7:
				pass
			8:
				pass
			9:
				pass
			10:
				pass
			11:
				pass
			12:
				pass
			13:
				pass
			14:
				pass
			15:
				pass
			16:
				pass
			17:
				pass
			18:
				pass
		loaded=true
	if !userpack:
		#load user packmon
		userpack=true
	if loaded && userpack:
		#battle
		pass

func _init():
	loaded=false
