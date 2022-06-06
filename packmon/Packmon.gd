extends Node2D

class_name Packmon

export var Packmonname : String

export var onLevelupHp : int
export var onLevelupSpd : int
export var onLevelupAtk : int
export var onLevelupDef : int


export var attackenInBesitz : PoolIntArray

export var type : PoolStringArray

#SP
export var epRequired : int
export var ep : int
export var lvl : int
export var hp : int
export var spd : int
export var atk : int
export var def : int


#SW
export var paralyse : bool
export var vergiftung : bool
export var schlafend : bool
export var brennend : bool
export var regenerierend : bool
export var eingefroren : bool
export var verwirrt : bool

export (Texture) var texture

func _init():
	type = ["normal"]
	attackenInBesitz = [0,4]
	epRequired = 100
	ep = 0
	lvl = 1
	hp = 25
	atk = 25
	def = 25
	spd = 25
	
	paralyse = false
	vergiftung = false
	schlafend = false
	brennend = false
	regenerierend = false
	eingefroren = false
	verwirrt = false

func levelup():
	epRequired = epRequired * 1.2
	
	if lvl % 5 == 0:
		hp += 25
		atk += 25
		def += 25
		spd += 25
	else:
		hp += onLevelupHp
		atk += onLevelupAtk
		def += onLevelupDef
		spd += onLevelupSpd
	
	if lvl % 10 == 0:
		attackeLernen()

func attackeLernen():
	match lvl:
		10:
			match type[0]:
				"normal":
					#normal Attacken lvl 10
					pass
				"fight":
					#fight Attacken lvl 10
					pass
				"flying":
					#flying Attacken lvl 10	
					pass
				"poison":
					#poison Attacken lvl 10	
					pass
				"ground":
					#ground Attacken lvl 10	
					pass
				"rock":
					#rock Attacken lvl 10	
					pass
				"bug":
					#bug Attacken lvl 10	
					pass
				"ghost":
					#ghost Attacken lvl 10	
					pass
				"steel":
					#steel Attacken lvl 10	
					pass
				"fire":
					#fire Attacken lvl 10	
					pass
				"water":
					#water Attacken lvl 10	
					pass
				"grass":
					#grass Attacken lvl 10	
					pass
				"electric":
					#electric Attacken lvl 10
					pass
				"psychic":
					#psychic Attacken lvl 10	
					pass
				"ice":
					#ice Attacken lvl 10	
					pass
				"dragon":
					#dragon Attacken lvl 10	
					pass
				"dark":
					#dark Attacken lvl 10	
					pass
				"fairy":
					#fairy Attacken lvl 10		
					pass
		20:
			match type[0]:
				"normal":
					#normal Attacken lvl 20
					pass
				"fight":
					#fight Attacken lvl 20
					pass
				"flying":
					#flying Attacken lvl 20
					pass
				"poison":
					#poison Attacken lvl 20
					pass
				"ground":
					#ground Attacken lvl 20	
					pass
				"rock":
					#rock Attacken lvl 20	
					pass
				"bug":
					#bug Attacken lvl 20	
					pass
				"ghost":
					#ghost Attacken lvl 20	
					pass
				"steel":
					#steel Attacken lvl 20	
					pass
				"fire":
					#fire Attacken lvl 20	
					pass
				"water":
					#water Attacken lvl 20	
					pass
				"grass":
					#grass Attacken lvl 20	
					pass
				"electric":
					#electric Attacken lvl 20
					pass
				"psychic":
					#psychic Attacken lvl 20	
					pass
				"ice":
					#ice Attacken lvl 20	
					pass
				"dragon":
					#dragon Attacken lvl 20	
					pass
				"dark":
					#dark Attacken lvl 20	
					pass
				"fairy":
					#fairy Attacken lvl 20		
					pass
		30:
			match type[0]:
				"normal":
					#normal Attacken lvl 30
					pass
				"fight":
					#fight Attacken lvl 30
					pass
				"flying":
					#flying Attacken lvl 30	
					pass
				"poison":
					#poison Attacken lvl 30	
					pass
				"ground":
					#ground Attacken lvl 30	
					pass
				"rock":
					#rock Attacken lvl 30	
					pass
				"bug":
					#bug Attacken lvl 30	
					pass
				"ghost":
					#ghost Attacken lvl 30	
					pass
				"steel":
					#steel Attacken lvl 30	
					pass
				"fire":
					#fire Attacken lvl 30	
					pass
				"water":
					#water Attacken lvl 30	
					pass
				"grass":
					#grass Attacken lvl 30	
					pass
				"electric":
					#electric Attacken lvl 30
					pass
				"psychic":
					#psychic Attacken lvl 30	
					pass
				"ice":
					#ice Attacken lvl 30	
					pass
				"dragon":
					#dragon Attacken lvl 30	
					pass
				"dark":
					#dark Attacken lvl 30	
					pass
				"fairy":
					#fairy Attacken lvl 30		
					pass
		40:
			match type[0]:
				"normal":
					#normal Attacken lvl 40
					pass
				"fight":
					#fight Attacken lvl 40
					pass
				"flying":
					#flying Attacken lvl 40	
					pass
				"poison":
					#poison Attacken lvl 40	
					pass
				"ground":
					#ground Attacken lvl 40	
					pass
				"rock":
					#rock Attacken lvl 40	
					pass
				"bug":
					#bug Attacken lvl 40	
					pass
				"ghost":
					#ghost Attacken lvl 40	
					pass
				"steel":
					#steel Attacken lvl 40	
					pass
				"fire":
					#fire Attacken lvl 40	
					pass
				"water":
					#water Attacken lvl 40	
					pass
				"grass":
					#grass Attacken lvl 40	
					pass
				"electric":
					#electric Attacken lvl 40
					pass
				"psychic":
					#psychic Attacken lvl 40	
					pass
				"ice":
					#ice Attacken lvl 40	
					pass
				"dragon":
					#dragon Attacken lvl 40	
					pass
				"dark":
					#dark Attacken lvl 40	
					pass
				"fairy":
					#fairy Attacken lvl 40		
					pass
		50:
			match type[0]:
				"normal":
					#normal Attacken lvl 50
					pass
				"fight":
					#fight Attacken lvl 50
					pass
				"flying":
					#flying Attacken lvl 50	
					pass
				"poison":
					#poison Attacken lvl 50	
					pass
				"ground":
					#ground Attacken lvl 50	
					pass
				"rock":
					#rock Attacken lvl 50	
					pass
				"bug":
					#bug Attacken lvl 50	
					pass
				"ghost":
					#ghost Attacken lvl 50	
					pass
				"steel":
					#steel Attacken lvl 50	
					pass
				"fire":
					#fire Attacken lvl 50	
					pass
				"water":
					#water Attacken lvl 50	
					pass
				"grass":
					#grass Attacken lvl 50	
					pass
				"electric":
					#electric Attacken lvl 50
					pass
				"psychic":
					#psychic Attacken lvl 50	
					pass
				"ice":
					#ice Attacken lvl 50	
					pass
				"dragon":
					#dragon Attacken lvl 50	
					pass
				"dark":
					#dark Attacken lvl 50	
					pass
				"fairy":
					#fairy Attacken lvl 50		
					pass
		60:
			match type[0]:
				"normal":
					#normal Attacken lvl 60
					pass
				"fight":
					#fight Attacken lvl 60
					pass
				"flying":
					#flying Attacken lvl 60	
					pass
				"poison":
					#poison Attacken lvl 60	
					pass
				"ground":
					#ground Attacken lvl 60	
					pass
				"rock":
					#rock Attacken lvl 60	
					pass
				"bug":
					#bug Attacken lvl 60	
					pass
				"ghost":
					#ghost Attacken lvl 60	
					pass
				"steel":
					#steel Attacken lvl 60	
					pass
				"fire":
					#fire Attacken lvl 60	
					pass
				"water":
					#water Attacken lvl 60	
					pass
				"grass":
					#grass Attacken lvl 60	
					pass
				"electric":
					#electric Attacken lvl 60
					pass
				"psychic":
					#psychic Attacken lvl 60	
					pass
				"ice":
					#ice Attacken lvl 60	
					pass
				"dragon":
					#dragon Attacken lvl 60	
					pass
				"dark":
					#dark Attacken lvl 60	
					pass
				"fairy":
					#fairy Attacken lvl 60		
					pass
		70:
			match type[0]:
				"normal":
					#normal Attacken lvl 70
					pass
				"fight":
					#fight Attacken lvl 70
					pass
				"flying":
					#flying Attacken lvl 70
					pass
				"poison":
					#poison Attacken lvl 70
					pass
				"ground":
					#ground Attacken lvl 70	
					pass
				"rock":
					#rock Attacken lvl 70	
					pass
				"bug":
					#bug Attacken lvl 70	
					pass
				"ghost":
					#ghost Attacken lvl 70	
					pass
				"steel":
					#steel Attacken lvl 70	
					pass
				"fire":
					#fire Attacken lvl 70	
					pass
				"water":
					#water Attacken lvl 70	
					pass
				"grass":
					#grass Attacken lvl 70	
					pass
				"electric":
					#electric Attacken lvl 70
					pass
				"psychic":
					#psychic Attacken lvl 70	
					pass
				"ice":
					#ice Attacken lvl 70	
					pass
				"dragon":
					#dragon Attacken lvl 70	
					pass
				"dark":
					#dark Attacken lvl 70	
					pass
				"fairy":
					#fairy Attacken lvl 70		
					pass
		80:
			match type[0]:
				"normal":
					#normal Attacken lvl 80
					pass
				"fight":
					#fight Attacken lvl 80
					pass
				"flying":
					#flying Attacken lvl 80	
					pass
				"poison":
					#poison Attacken lvl 80	
					pass
				"ground":
					#ground Attacken lvl 80	
					pass
				"rock":
					#rock Attacken lvl 80	
					pass
				"bug":
					#bug Attacken lvl 80	
					pass
				"ghost":
					#ghost Attacken lvl 80	
					pass
				"steel":
					#steel Attacken lvl 80	
					pass
				"fire":
					#fire Attacken lvl 80	
					pass
				"water":
					#water Attacken lvl 80	
					pass
				"grass":
					#grass Attacken lvl 80	
					pass
				"electric":
					#electric Attacken lvl 80
					pass
				"psychic":
					#psychic Attacken lvl 80	
					pass
				"ice":
					#ice Attacken lvl 80	
					pass
				"dragon":
					#dragon Attacken lvl 80	
					pass
				"dark":
					#dark Attacken lvl 80	
					pass
				"fairy":
					#fairy Attacken lvl 80		
					pass
		90:
			match type[0]:
				"normal":
					#normal Attacken lvl 90
					pass
				"fight":
					#fight Attacken lvl 90
					pass
				"flying":
					#flying Attacken lvl 90	
					pass
				"poison":
					#poison Attacken lvl 90	
					pass
				"ground":
					#ground Attacken lvl 90	
					pass
				"rock":
					#rock Attacken lvl 90	
					pass
				"bug":
					#bug Attacken lvl 90	
					pass
				"ghost":
					#ghost Attacken lvl 90	
					pass
				"steel":
					#steel Attacken lvl 90	
					pass
				"fire":
					#fire Attacken lvl 90	
					pass
				"water":
					#water Attacken lvl 90	
					pass
				"grass":
					#grass Attacken lvl 90	
					pass
				"electric":
					#electric Attacken lvl 90
					pass
				"psychic":
					#psychic Attacken lvl 90	
					pass
				"ice":
					#ice Attacken lvl 90	
					pass
				"dragon":
					#dragon Attacken lvl 90	
					pass
				"dark":
					#dark Attacken lvl 90	
					pass
				"fairy":
					#fairy Attacken lvl 90		
					pass
		100:
			match type[0]:
				"normal":
					#normal Attacken lvl 100
					pass
				"fight":
					#fight Attacken lvl 100
					pass
				"flying":
					#flying Attacken lvl 100	
					pass
				"poison":
					#poison Attacken lvl 100
					pass
				"ground":
					#ground Attacken lvl 100	
					pass
				"rock":
					#rock Attacken lvl 100	
					pass
				"bug":
					#bug Attacken lvl 100	
					pass
				"ghost":
					#ghost Attacken lvl 100	
					pass
				"steel":
					#steel Attacken lvl 100	
					pass
				"fire":
					#fire Attacken lvl 100	
					pass
				"water":
					#water Attacken lvl 100	
					pass
				"grass":
					#grass Attacken lvl 100	
					pass
				"electric":
					#electric Attacken lvl 100
					pass
				"psychic":
					#psychic Attacken lvl 100	
					pass
				"ice":
					#ice Attacken lvl 100	
					pass
				"dragon":
					#dragon Attacken lvl 100	
					pass
				"dark":
					#dark Attacken lvl 100	
					pass
				"fairy":
					#fairy Attacken lvl 100	
					pass
	
	if attackenInBesitz.size() == 4:
		attackeVerlernen()
		
func attackeVerlernen():
	pass		#TODO!!!
