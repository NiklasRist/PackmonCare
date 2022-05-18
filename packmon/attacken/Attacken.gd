extends Node2D
#import Packmon.gd
const Packmon = preload("res://packmon/Packmon.gd") # Relative path
onready var PackmonVar = Packmon.new()

#still needs to be imported from Statuseffekte
export var paralyse = false
export var vergiftung = false
export var schlafend = false
export var brennend = false 
export var regenerierend = false
export var eingefroren = false 
export var verwirrt = false

var dmg
var atkChange
var defChange
var spdChange
var hpChange

#create slider for damage percentual 0-3.5
export (float, 3.5) var dmgp 
#create slider for probability 0-1
export (float, 1) var prob 
#create slider for duration 1-1000000000000
export (int, 1, 1000000000000) var dur
#create slider for repition 0-20
export (int, 20) var rep
#create clickbox
export (bool) var efct = [paralyse, vergiftung, schlafend, brennend, regenerierend, eingefroren, verwirrt]
#create slider
export (float, -0.95, 2) var atkp
export (float, -0.95, 2) var defp
export (float, -0.95, 2) var hpp
export (float, -0.95, 2) var spdp

func _init():
	dmgp=0
	prob=0
	dmg = dmgp * PackmonVar.atk
	
