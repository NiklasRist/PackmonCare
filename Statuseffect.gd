extends Node2D
var dur
var rng = RandomNumberGenerator.new()
func paralyzed():
	rng.randomize()
	var dur = rng.randf_range(1,5)
func poisened():
	dur = 8
func sleeping():
	rng.randomize()
	var dur = rng.randf_range(1,5)
func burning():
	dur = 8
func frozen():
	rng.randomize()
	var dur = rng.randf_range(1,5)
func regenerating():
	rng.randomize()
	var dur = rng.randf_range(1,5)
func confused():
	dur = 3
func fear():
	rng.randomize()
	var dur = rng.randf_range(1,5)
