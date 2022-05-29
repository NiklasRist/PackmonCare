extends Node2D

func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
	  get_tree().quit()

const slots = preload("res://inventory/slot1.gd")
onready var inventorySlots = $ScrollContainer/grid
var AlreadyItem = null

func _ready():
	for slotInvent in inventorySlots.get_children():
		slotInvent.connect("gui_input", self, "slot_gui_input", [slotInvent])
		
func slot_gui_input(event: InputEvent, slot: slots):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT && event.pressed:
			if AlreadyItem != null:
				if !slot.item:
					slot.drop(AlreadyItem)
					AlreadyItem = null
				else:
					var tempItem = slot.item
					slot.drag()
					tempItem.global_position = event.global_position - Vector2(40, 40)
					slot.drop(AlreadyItem)
			elif slot.item:
					AlreadyItem = slot.item
					slot.drag()
					AlreadyItem.global_position = get_global_mouse_position() - - Vector2(40, 40)
		if event.button_index == BUTTON_RIGHT:
			#menu
			pass	
func _input(event):
	if AlreadyItem:
		#follow mouse position
		AlreadyItem.global_position = get_global_mouse_position() - Vector2(40, 40)
		
