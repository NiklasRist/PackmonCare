extends KinematicBody2D
var rng = RandomNumberGenerator.new()
const Area2d_ = preload("res://TallGrass.gd")
var _Area2D = Area2d_.new()
	
export var inGrass:bool

var vel = Vector2(0,0)
var mov = Vector2(0,0)
var animationPlayer = null

#space to store packmon data
var packmon_space=[["Rabbiflaflam", "packmon_1", "packmon_2", "packmon_3", "packmon_4", "packmon_5"], ["1", "lvl_packmon_1", "lvl_packmon_2", "lvl_packmon_3", "lvl_packmon_4", "lvl_packmon_5"], [["fast punch", "meditation", "", ""], "attack_packmon_2", "attack_packmon_3", "attack_packmon_4"]]
#space to store items
var item_space=[]

func _init():
	inGrass = false
	z_index=12
	
func _ready():
	animationPlayer = $PlayerAnimation
	
func _process(_delta):
	set_physics_process(true)
	if Input.is_action_pressed("ui_left"):
		mov+=Vector2(-1,0)
		if (Input.is_action_pressed("ui_up")) == false && (Input.is_action_pressed("ui_down") == false):
			animationPlayer.play("playerMovingLeft")
		
	if Input.is_action_pressed("ui_right"):
		mov+=Vector2(1, 0)
		if (Input.is_action_pressed("ui_up")) == false && (Input.is_action_pressed("ui_down") == false):
			animationPlayer.play("playerMovingRight")
			
	if Input.is_action_pressed("ui_up"):
		mov+=Vector2(0, -1)
		animationPlayer.play("playerMovingUp")
		
	#if _Area2D._on_Area2D_body_entered()&&!_Area2D._on_Area2D_body_exited():	#CheckEncounter()
	if Input.is_action_just_pressed("ui_battle"):
		checkEncounter()
			
	if Input.is_action_pressed("ui_down"):
		mov+=Vector2(0, 1)
		animationPlayer.play("playerMovingDown")
	
	vel=75*mov.normalized()
	
	if Input.is_action_just_released("ui_left"):
		animationPlayer.stop()
		
	if Input.is_action_just_released("ui_right"):
		animationPlayer.stop()
		
	if Input.is_action_just_released("ui_up"):
		animationPlayer.stop()
		
	if Input.is_action_just_released("ui_down"):
		animationPlayer.stop()
	
func checkEncounter():
	get_tree().change_scene("res://battle/Battle.tscn")
	#rng.randomize()
	#var battleProb = rng.randi_range(1,600)
	#if(battleProb<4):
	#	get_tree().change_scene("res://battle/Battle.tscn")
	
func _physics_process(delta):
	move_and_slide(vel)
	mov=Vector2(0,0)
	
