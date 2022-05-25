extends Node2D
const Packmon = preload("res://packmon/Packmon.gd") # Relative path
onready var PackmonVar = Packmon.new()


var damagePercentageTaken
var probability
var dur
var damagePercentageAmplify
var speedslow
var  HpHealed
var rng = RandomNumberGenerator.new()


func paralyzed():
	rng.randomize()
	dur = rng.randf_range(1,5)				#Warscheinlichkeit der Haltedauer effekt
	probability = rng.randf_range(1,10)		#Warscheinlichkeit nicht anzugreifen(50%)
	
func poisened():
	dur = 8									#Effekt hält 8 Runden
	damagePercentageTaken = 0.02			#2% von 100% poison damage
	
func sleeping():
	rng.randomize()
	dur = rng.randf_range(1,5)				#Warscheinlichkeit der Haltedauer effekt
	
func burning(): 
	dur = 8									#Effekt hält 8 Runden
	damagePercentageTaken = 0.02			#2% von 100% verbrennungsschaden
	
func frozen():
	rng.randomize()
	dur = rng.randf_range(1,5)				#Warscheinlichkeit der Haltedauer effekt
	probability = rng.randf_range(1,10)		#Warscheinlichkeit nicht anzugreifen (15%)
	speedslow = 0.5
	
func regenerating():
	rng.randomize()
	dur = 5									#Warscheinlichkeit der Haltedauer effekt
	HpHealed= 0.03							#Heilt 3 von 100% der Hp
	
func confused():
	rng.randomize()
	probability =rng.randf_range(1,10)		#Warscheinlichkeit sich anzugreifen(40%)
	dur = 3									#Effekt hält 3 Runden
	damagePercentageAmplify = 0.05			#Damage amplifed 5%
	
func fear():
	rng.randomize()
	dur = rng.randf_range(1,5)				#Warscheinlichkeit der Haltedauer effekt
	probability = rng.randf_range(1,10)		#Warscheinlichkeit nicht anzugreifen (20%)
	
	
