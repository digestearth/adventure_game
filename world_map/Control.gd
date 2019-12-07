extends Control

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
	get_tree().get_root().get_node("world_map").find_node("State").set_location("home")
	State.goto_scene("res://home_screen/home_screen.tscn")



func _on_grocery_button_pressed():
	get_tree().get_root().get_node("world_map").find_node("State").set_location("Grocery")
