extends Node2D

signal loc_changed(loc)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_home_button_pressed():
	get_tree().get_root().get_node("game").find_node("State").set_location("Home")
	get_tree().get_root().get_node("game").find_node("State").set_current_snapshot("res://town_screens/home.tscn")
	#State.set_location("home")

func _on_grocery_button_pressed():
	get_tree().get_root().get_node("game").find_node("State").set_location("Grocery")
	get_tree().get_root().get_node("game").find_node("State").set_current_snapshot("res://town_screens/shop.tscn")
	

func _on_State_location_changed(location):
	emit_signal("loc_changed", location)
