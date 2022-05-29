extends Node2D
var dur #duration of effect (in turns)
var rng = RandomNumberGenerator.new()
var prob #probability of a successful attack, while the effect lasts (in percent)
var dmgprcnt #damage taken per turn (in percent from hp)
var chngstts #change of a status, while the effect lasts(in percent)

func paralyzed():
	rng.randomize()
	var dur = rng.randf_range(1,5)
	prob = 0.5
func poisened():
	dur = 8
	dmgprcnt=0.02
func sleeping():
	rng.randomize()
	var dur = rng.randf_range(1,5)
	prob = 0
func burning():
	dur = 8
	dmgprcnt=0.02
func frozen():
	rng.randomize()
	var dur = rng.randf_range(1,5)
	prob = 0
	chngstts=0.5 #changes ONLY speed
func regenerating():
	rng.randomize()
	var dur = rng.randf_range(1,5)
	dmgprcnt=-0.03 #regeneriert durch negativen Schaden
func confused():
	dur = 3
	prob = 0.4 #else change target of attack
func fear():
	rng.randomize()
	var dur = rng.randf_range(1,5)
	prob=0.2
