extends Control

#import all packmon
const dorie_ = preload("res://packmon/Dorie/Dorie.gd")
var dorie = dorie_.new()

const dragon_ = preload("res://packmon/Dragon type 1/Dragon type 1.gd")
var dragon = dragon_.new()

const eleceel_ = preload("res://packmon/Eleceel/Eleceel.gd")
var eleceel = eleceel_.new()

const flacier_ = preload("res://packmon/Flacier/Flacier.gd")
var flacier = flacier_.new()

const gavlarnton_ = preload("res://packmon/Gavlarnton/Gavlarnton.gd")
var gavlarnton = gavlarnton_.new()

const golec_ = preload("res://packmon/Golec/golec.gd")
var golec = golec_.new()

const harmopla_ = preload("res://packmon/Harmopla/Harmopla.gd")
var harmopla = harmopla_.new()

const mastermind_ = preload("res://packmon/Mastermind/Mastermind.gd")
var mastermind = mastermind_.new()

const mothragon_ = preload("res://packmon/Mothragon/Mothragon.gd")
var mothragon = mothragon_.new()

const nightmare_ = preload("res://packmon/Nightmare/Nightmare.gd")
var nightmare = nightmare_.new()

const nomnom_ = preload("res://packmon/NomNom/NomNom.gd")
var nomnom = nomnom_.new()

const piranha_ = preload("res://packmon/Piranha Plant/Piranha Plant.gd")
var piranha = piranha_.new()

const poiwesa_ = preload("res://packmon/Poiwesa/Poiwesa.gd")
var poiwesa = poiwesa_.new()

const rabbiflaflam_ = preload("res://packmon/Rabbiflaflam/Rabbiflaflam.gd")
var rabbiflaflam = rabbiflaflam_.new()

const torblast_ = preload("res://packmon/Torblast/Torblast.gd")
var torblast = torblast_.new()

const voiradon_ = preload("res://packmon/Voiradon/Voiradon.gd")
var voiradon = voiradon_.new()

const blazesect_ = preload("res://packmon/blazesect/Blazesect.gd")
var blazesect = blazesect_.new()

#import all attacks

const fastpunch_ = preload("res://packmon/attacken/basic/fast punch.gd")
var fastpunch = fastpunch_.new()

const hardening_ = preload("res://packmon/attacken/basic/hardening.gd")
var hardening = hardening_.new()

const hp_transformation_ = preload("res://packmon/attacken/basic/HP transformation.gd")
var hp_transformation =hp_transformation_.new()

const meditation_ = preload("res://packmon/attacken/basic/meditation.gd")
var meditation = meditation_.new()

const scary_bite_ = preload("res://packmon/attacken/basic/scary bite.gd")
var scary_bite = scary_bite_.new()

const silent_battle_cry_ = preload("res://packmon/attacken/basic/silent battle cry.gd")
var silent_battle_cry = fastpunch_.new()

const tail_whip_ = preload("res://packmon/attacken/basic/tail whip.gd")
var tail_whip = tail_whip_.new()

const weaken_scales_ = preload("res://packmon/attacken/basic/weaken scales.gd")
var weaken_scales = weaken_scales_.new()


var loaded=false
var userpack=false
var rand=RandomNumberGenerator.new()
var num=0.0
#enemy var
var packmon
var Packname
var Packattacks=["", "", "", ""]
var Packimage
var Packhp
var Packep
#user var
var u_packmon
var PacknameU
var PackattacksU=["", "", "", ""]
var PackimageU
var PackhpU
var PackepU

#enemy attack selected
var sel=false
#user attack selected
var u_sel=false
#enemy attackname
var attackname
#user attackname
var u_attackname

#attack var enemy
var dmg
var target

#attack var enemy
var u_dmg
var u_target
#zwischspeicher
var zwsave = [0, 0, 0] #float
var zwsave_bool = false
#probability [prob, u_prob]
var prob = [0, 0]

func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
	  get_tree().quit()
	#load random enemy packmon
	if !loaded: #selects enemy packmon
		rand.randomize()
		num = rand.randi_range(0, 16)
		match num:
			0:
				packmon=dorie
				Packname=dorie.Packmonname
				Packattacks=dorie.attackenInBesitz
				Packimage=dorie.texture
				Packhp=dorie.hp
				Packep=dorie.ep
			1:	
				packmon=dragon
				Packname=dragon.Packmonname
				Packattacks=dragon.attackenInBesitz
				Packimage=dragon.texture
				Packhp=dragon.hp
				Packep=dragon.ep
			2:
				packmon=eleceel
				Packname=eleceel.Packmonname
				Packattacks=eleceel.attackenInBesitz
				Packimage=eleceel.texture
				Packhp=eleceel.hp
				Packep=eleceel.ep
			3:
				packmon=flacier
				Packname=flacier.Packmonname
				Packattacks=flacier.attackenInBesitz
				Packimage=flacier.texture
				Packhp=flacier.hp
				Packep=flacier.ep
			4:
				packmon=gavlarnton
				Packname=gavlarnton.Packmonname
				Packattacks=gavlarnton.attackenInBesitz
				Packimage=gavlarnton.texture
				Packhp=gavlarnton.hp
				Packep=gavlarnton.ep
			5:
				packmon=golec
				Packname=golec.Packmonname
				Packattacks=golec.attackenInBesitz
				Packimage=golec.texture
				Packhp=golec.hp
				Packep=golec.ep
			6:
				packmon=harmopla
				Packname=harmopla.Packmonname
				Packattacks=harmopla.attackenInBesitz
				Packimage=harmopla.texture
				Packhp=harmopla.hp
				Packep=harmopla.ep
			7:
				packmon=mastermind
				Packname=mastermind.Packmonname
				Packattacks=mastermind.attackenInBesitz
				Packimage=mastermind.texture
				Packhp=mastermind.hp
				Packep=mastermind.ep
			8:
				packmon=mothragon
				Packname=mothragon.Packmonname
				Packattacks=mothragon.attackenInBesitz
				Packimage=mothragon.texture
				Packhp=mothragon.hp
				Packep=mothragon.ep
			9:
				packmon=nightmare
				Packname=nightmare.Packmonname
				Packattacks=nightmare.attackenInBesitz
				Packimage=nightmare.texture
				Packhp=nightmare.hp
				Packep=nightmare.ep
			10:
				packmon=nomnom
				Packname=nomnom.Packmonname
				Packattacks=nomnom.attackenInBesitz
				Packimage=nomnom.texture
				Packhp=nomnom.hp
				Packep=nomnom.ep
			11:
				packmon=piranha
				Packname=piranha.Packmonname
				Packattacks=piranha.attackenInBesitz
				Packimage=piranha.texture
				Packhp=piranha.hp
				Packep=piranha.ep
			12:
				packmon=poiwesa
				Packname=poiwesa.Packmonname
				Packattacks=poiwesa.attackenInBesitz
				Packimage=poiwesa.texture
				Packhp=poiwesa.hp
				Packep=poiwesa.ep
			13:
				packmon=rabbiflaflam
				Packname=rabbiflaflam.Packmonname
				Packattacks=rabbiflaflam.attackenInBesitz
				Packimage=rabbiflaflam.texture
				Packhp=rabbiflaflam.hp
				Packep=rabbiflaflam.ep
			14:
				packmon=torblast
				Packname=torblast.Packmonname
				Packattacks=torblast.attackenInBesitz
				Packimage=torblast.texture
				Packhp=torblast.hp
				Packep=torblast.ep
			15:
				packmon=voiradon
				Packname=voiradon.Packmonname
				Packattacks=voiradon.attackenInBesitz
				Packimage=voiradon.texture
				Packhp=voiradon.hp
				Packep=voiradon.ep
			16:
				packmon=blazesect
				Packname=blazesect.Packmonname
				Packattacks=blazesect.attackenInBesitz
				Packimage=blazesect.texture
				Packhp=blazesect.hp
				Packep=blazesect.ep
				
		_set_enemy_packmon_data(Packname, Packattacks, Packimage, Packhp, Packep)
		loaded=true
	#load user packmon
	if !userpack:
		#load user packmon
		u_packmon=rabbiflaflam
		PacknameU=rabbiflaflam.Packmonname
		PackattacksU=rabbiflaflam.attackenInBesitz
		PackimageU=rabbiflaflam.texture
		PackhpU=rabbiflaflam.hp
		PackepU=rabbiflaflam.ep
		_set_user_packmon_data(PacknameU, PackattacksU, PackimageU, PackhpU, PackepU)
		userpack=true
	#enemy selects attack 
	if loaded && userpack:
		_select_enemy_attack()
	#attack effects
	if sel && u_sel:
		
		attack_var(attackname, dmg, target, packmon)
		dmg=zwsave[0]
		target=zwsave[1]
		prob[0]= zwsave[2]
		attack_var(u_attackname, u_dmg, u_target, u_packmon)
		u_dmg=zwsave[0]
		u_target=zwsave[1]
		prob[1]= zwsave[2]
		
		attack_effect(attackname)
		attack_effect(u_attackname)
		
		if packmon.spd>u_packmon.spd:
			if attack_successfull(prob[0]):
				get_dmg(dmg, target, u_packmon, packmon, packmon.def)
				print("Enemy!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
			if attack_successfull(prob[1]):
				get_dmg(u_dmg, u_target, packmon, u_packmon, u_packmon.def)
				print("User!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		else:
			zwsave_bool=attack_successfull(prob[1])
			if zwsave_bool:
				get_dmg(u_dmg, u_target, packmon, u_packmon, u_packmon.def)
				print("User!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
			zwsave_bool=attack_successfull(prob[0])
			if zwsave_bool:
				get_dmg(dmg, target, u_packmon, packmon, packmon.def)
				print("Enemy!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
			
		
		
		print(packmon.hp, " ", dmg, " ", target, "", attackname)
		print(u_packmon.hp, " ", u_dmg, " ", u_target, "", u_attackname)
		sel=!sel
		u_sel=!u_sel
	_update_packmon_data(Packname, Packattacks, Packimage, packmon.hp, Packep, PacknameU, PackattacksU, PackimageU, u_packmon.hp, PackepU)
	if packmon.hp <= 0:
		loaded=!loaded
		u_packmon.levelup()
		print("Level: ", u_packmon.lvl)
	if u_packmon.hp <= 0:
		get_tree().change_scene("res://Main.tscn")
	
	

func _init():
	loaded=false
	
func _set_enemy_packmon_data(name, attacks, image, hp, ep):
	#packmon enemy info
	get_node("Enemy/PackmonInfo").get_node("Name").text = name
	get_node("Enemy/PackmonInfo").get_node("HP").max_value = hp
	get_node("Enemy/PackmonInfo").get_node("HP").value = hp
	get_node("Enemy/PackmonInfo").get_node("HP").get_node("HPNumber").text = str(hp)
	get_node("Enemy/PackmonInfo").get_node("EP").max_value = ep
	get_node("Enemy/PackmonInfo").get_node("EP").value = ep
	#load packmon image
	get_node("Enemy/PackmonImage2").texture=image

func _set_user_packmon_data(name, attacks, image, hp, ep):
	#packmon enemy info
	get_node("BackpacksTeam/PackmonInfo").get_node("Name").text = name
	get_node("BackpacksTeam/PackmonInfo").get_node("HP").max_value = hp
	get_node("BackpacksTeam/PackmonInfo").get_node("HP").value = hp
	get_node("BackpacksTeam/PackmonInfo").get_node("HP").get_node("HPNumber").text = str(hp)
	get_node("BackpacksTeam/PackmonInfo").get_node("EP").max_value = ep
	get_node("BackpacksTeam/PackmonInfo").get_node("EP").value = ep
	
	#load packmon image
	get_node("BackpacksTeam/PackmonImage").texture=image
	#load attacks
	get_node("actionmenu/Button").text=attacks[0]
	get_node("actionmenu/Button2").text=attacks[1]
	get_node("actionmenu/Button3").text=attacks[2]
	get_node("actionmenu").get_node("Button4").text=attacks[3]

func _update_packmon_data(name, attacks, image, hp, ep, nameU, attacksU, imageU, hpU, epU):
	get_node("Enemy/PackmonInfo").get_node("Name").text = name
	get_node("Enemy/PackmonInfo").get_node("HP").value = hp
	get_node("Enemy/PackmonInfo").get_node("HP").get_node("HPNumber").text = str(hp)
	get_node("Enemy/PackmonInfo").get_node("EP").value = ep
	
	get_node("BackpacksTeam/PackmonInfo").get_node("Name").text = nameU
	get_node("BackpacksTeam/PackmonInfo").get_node("HP").value = hpU
	get_node("BackpacksTeam/PackmonInfo").get_node("HP").get_node("HPNumber").text = str(hpU)
	get_node("BackpacksTeam/PackmonInfo").get_node("EP").value = epU

func _on_Button_pressed():
	if sel:
		u_attackname=get_node("actionmenu/Button").text
		if u_attackname != "":
			u_sel=true


func _on_Button2_pressed():
	if sel:
		u_attackname=get_node("actionmenu/Button2").text
		if u_attackname != "":
			u_sel=true


func _on_Button3_pressed():
	if sel:
		u_attackname=get_node("actionmenu/Button3").text
		if u_attackname != "":
			u_sel=true


func _on_Button4_pressed():
	if sel:
		u_attackname=get_node("actionmenu/Button4").text
		if u_attackname != "":
			u_sel=true

func _select_enemy_attack():
	rand.randomize()
	num = rand.randi_range(0, 3)
	while Packattacks[num] == "":
		rand.randomize()
		num = rand.randi_range(0, 3)
	sel=true	
	attackname=Packattacks[num]

func attack_effect(atknm):
	pass

func get_dmg(damge, targ, pkmon, u_pkmon, def):
	damge=type_damage(damge, u_pkmon, pkmon)
	match targ:
		0:
			if (def-damge)<0:
				pkmon.hp-=def-damge
			else:
				pkmon.hp-=1
		1:
			#attacke fehlgeschlagen
			pass
		2:
			if (def-damge)<0:
				u_pkmon.hp-=def-damge
			else:
				u_pkmon.hp-=1
	
func attack_var(atkname, damge, targ, pkmon):
	var prb
	match atkname:
		"fast punch":
			damge=fastpunch.dmgp * pkmon.atk
			targ=fastpunch.target
			prb=fastpunch.prob
		"hardening":
			damge=hardening.dmgp * pkmon.atk
			targ=hardening.target
			prb=hardening.prob
		"HP transformation":
			damge=hp_transformation.dmgp * pkmon.atk
			targ=hp_transformation.target
			prb=hp_transformation.prob
		"meditation":
			damge=meditation.dmgp * pkmon.atk
			targ=meditation.target
			prb=meditation.prob
			print("88888888    ", meditation.dmgp, "     8888888888")
		"scary bite":
			damge=scary_bite.dmgp * pkmon.atk
			targ=scary_bite.target
			prb=scary_bite.prob
		"silent_battle_cry":
			damge=silent_battle_cry.dmgp * pkmon.atk
			targ=silent_battle_cry.target
			prb=silent_battle_cry.prob
		"tail whip":
			damge=tail_whip.dmgp * pkmon.atk
			targ=tail_whip.target
			prb=tail_whip.prob
		"weaken scales":
			damge=weaken_scales.dmgp * pkmon.atk
			targ=weaken_scales.target
			prb=weaken_scales.prob
	#for debugging
	print(atkname, " ", damge, " ", targ, " ", pkmon)
	zwsave=[damge, targ, prb]
	
func attack_successfull(prb):
	var save = prb
	prb = null
	prb=save
	rand.randomize()
	num= null
	num = rand.randf_range(0, 1)
	print("Num: ", num)
	var wahr = !prb<num
	match wahr:
		true: return true
		false: return false
func type_damage(damge, atk_pkmn, def_pkmn):
	match def_pkmn.type:
		"normal":
			match atk_pkmn.type:
				"fight":
					damge*=2
				"ghost":
					damge*=0
		"fight":
			match atk_pkmn.type:
				"flying":
					damge*=2
				"rock":
					damge*=0.5
				"bug":
					damge*=0.5
				"psychic":
					damge*=2
				"dark":
					damge*=0.5
				"fairy":
					damge*=2	
				
		"flying":
			match atk_pkmn.type:
				"fight":
					damge*=0.5
				"ground":
					damge*=0
				"rock":
					damge*=2
				"bug":
					damge*=0.5
				"grass":
					damge*=0.5
				"electic":
					damge*=2	
				"ice":
					damge*=2	
		"poison":
			match atk_pkmn.type:
				"fight":
					damge*=0.5
				"poison":
					damge*=0.5
				"ground":
					damge*=2
				"bug":
					damge*=0.5
				"grass":
					damge*=0.5
				"psychic":
					damge*=2	
				"fairy":
					damge*=2	
		"ground":
			match atk_pkmn.type:
				"rock":
					damge*=0.5
				"poison":
					damge*=0.5
				"water":
					damge*=2
				"electric":
					damge*=0
				"grass":
					damge*=2
				"ice":
					damge*=2
		"rock":
			match atk_pkmn.type:
				"normal":
					damge*=0.5
				"fight":
					damge*=2
				"flying":
					damge*=0.5
				"poison":
					damge*=0.5
				"ground":
					damge*=2
				"steel":
					damge*=2
				"fire":
					damge*=0.5
				"water":
					damge*=2
				"grass":
					damge*=2
		"bug":
			match atk_pkmn.type:
				"fight":
					damge*=0.5
				"flying":
					damge*=2
				"ground":
					damge*=0.5
				"rock":
					damge*=2
				"fire":
					damge*=2
				"grass":
					damge*=0.5
		"ghost":
			match atk_pkmn.type:
				"fight":
					damge*=0
				"normal":
					damge*=0
				"poison":
					damge*=0.5
				"bug":
					damge*=0.5
				"dark":
					damge*=2
				"ghost":
					damge*=2
		"steel":
			match atk_pkmn.type:
				"fight":
					damge*=2
				"normal":
					damge*=0.5
				"poison":
					damge*=0
				"bug":
					damge*=0.5
				"flying":
					damge*=0.5
				"rock":
					damge*=0.5
				"ground":
					damge*=2
				"steel":
					damge*=0.5
				"fire":
					damge*=2
				"grass":
					damge*=0.5
				"psychic":
					damge*=0.5
				"ice":
					damge*=0.5
				"dragon":
					damge*=0.5
				"fairy":
					damge*=0.5
		"fire":
			match atk_pkmn.type:
				"fight":
					damge*=0
				"normal":
					damge*=0
				"poison":
					damge*=0.5
				"bug":
					damge*=0.5
				"dark":
					damge*=2
				"ghost":
					damge*=2
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
	return damge
