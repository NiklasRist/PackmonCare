extends KinematicBody2D

var vel = Vector2(200, 200)
var mov = Vector2(0,0)

func _process(_delta):
	set_physics_process(true)
	if Input.is_action_pressed("ui_left"):
		mov=Vector2(0,-1)
	if Input.is_action_pressed("ui_right"):
		mov=Vector2(0,1)
	if Input.is_action_pressed("ui_up"):
		mov=Vector2(-1, 0)
	if Input.is_action_pressed("ui_down"):
		mov=Vector2(1, 0)
func _physics_process(delta):
	move_and_slide(vel, mov)
