extends Control

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

var loaded=false
var userpack=false
var rand=RandomNumberGenerator.new()
var num
#enemy var
var Packname
var Packattacks=["", "", "", ""]
var Packimage
var Packhp
var Packep
#user var
var PacknameU
var PackattacksU=["", "", "", ""]
var PackimageU
var PackhpU
var PackepU
#enemy attack selected
var sel=false

func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
	  get_tree().quit()
	if !loaded: #selects enemy packmon
		rand.randomize()
		num = rand.randi_range(0, 16)
		match num:
			0:
				Packname=dorie.Packmonname
				Packattacks=dorie.attackenInBesitz
				Packimage=dorie.texture
				Packhp=dorie.hp
				Packep=dorie.ep
			1:
				Packname=dragon.Packmonname
				Packattacks=dragon.attackenInBesitz
				Packimage=dragon.texture
				Packhp=dragon.hp
				Packep=dragon.ep
			2:
				Packname=eleceel.Packmonname
				Packattacks=eleceel.attackenInBesitz
				Packimage=eleceel.texture
				Packhp=eleceel.hp
				Packep=eleceel.ep
			3:
				Packname=flacier.Packmonname
				Packattacks=flacier.attackenInBesitz
				Packimage=flacier.texture
				Packhp=flacier.hp
				Packep=flacier.ep
			4:
				Packname=gavlarnton.Packmonname
				Packattacks=gavlarnton.attackenInBesitz
				Packimage=gavlarnton.texture
				Packhp=gavlarnton.hp
				Packep=gavlarnton.ep
			5:
				Packname=golec.Packmonname
				Packattacks=golec.attackenInBesitz
				Packimage=golec.texture
				Packhp=golec.hp
				Packep=golec.ep
			6:
				Packname=harmopla.Packmonname
				Packattacks=harmopla.attackenInBesitz
				Packimage=harmopla.texture
				Packhp=harmopla.hp
				Packep=harmopla.ep
			7:
				Packname=mastermind.Packmonname
				Packattacks=mastermind.attackenInBesitz
				Packimage=mastermind.texture
				Packhp=mastermind.hp
				Packep=mastermind.ep
			8:
				Packname=mothragon.Packmonname
				Packattacks=mothragon.attackenInBesitz
				Packimage=mothragon.texture
				Packhp=mothragon.hp
				Packep=mothragon.ep
			9:
				Packname=nightmare.Packmonname
				Packattacks=nightmare.attackenInBesitz
				Packimage=nightmare.texture
				Packhp=nightmare.hp
				Packep=nightmare.ep
			10:
				Packname=nomnom.Packmonname
				Packattacks=nomnom.attackenInBesitz
				Packimage=nomnom.texture
				Packhp=nomnom.hp
				Packep=nomnom.ep
			11:
				Packname=piranha.Packmonname
				Packattacks=piranha.attackenInBesitz
				Packimage=piranha.texture
				Packhp=piranha.hp
				Packep=piranha.ep
			12:
				Packname=poiwesa.Packmonname
				Packattacks=poiwesa.attackenInBesitz
				Packimage=poiwesa.texture
				Packhp=poiwesa.hp
				Packep=poiwesa.ep
			13:
				Packname=rabbiflaflam.Packmonname
				Packattacks=rabbiflaflam.attackenInBesitz
				Packimage=rabbiflaflam.texture
				Packhp=rabbiflaflam.hp
				Packep=rabbiflaflam.ep
			14:
				Packname=torblast.Packmonname
				Packattacks=torblast.attackenInBesitz
				Packimage=torblast.texture
				Packhp=torblast.hp
				Packep=torblast.ep
			15:
				Packname=voiradon.Packmonname
				Packattacks=voiradon.attackenInBesitz
				Packimage=voiradon.texture
				Packhp=voiradon.hp
				Packep=voiradon.ep
			16:
				Packname=blazesect.Packmonname
				Packattacks=blazesect.attackenInBesitz
				Packimage=blazesect.texture
				Packhp=blazesect.hp
				Packep=blazesect.ep
				
		_set_enemy_packmon_data(Packname, Packattacks, Packimage, Packhp, Packep)
		loaded=true
	if !userpack:
		#load user packmon
		PacknameU=rabbiflaflam.Packmonname
		PackattacksU=rabbiflaflam.attackenInBesitz
		PackimageU=rabbiflaflam.texture
		PackhpU=rabbiflaflam.hp
		PackepU=rabbiflaflam.ep
		_set_user_packmon_data(PacknameU, PackattacksU, PackimageU, PackhpU, PackepU)
		userpack=true
	if loaded && userpack:
		_select_enemy_attack()
	_update_packmon_data(Packname, Packattacks, Packimage, Packhp, Packep, PacknameU, PackattacksU, PackimageU, PackhpU, PackepU)
	
	

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
		pass


func _on_Button2_pressed():
	pass # Replace with function body.


func _on_Button3_pressed():
	pass # Replace with function body.


func _on_Button4_pressed():
	pass # Replace with function body.

func _select_enemy_attack():
	rand.randomize()
	num = rand.randi_range(0, 4)
	while Packattacks[num] == "":
		rand.randomize()
		num = rand.randi_range(0, 4)
	sel=true	
