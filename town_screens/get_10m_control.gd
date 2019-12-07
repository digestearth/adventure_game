extends Node2D

# Declare member variables here. Examples:
var m = 0
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	print("getting money...")
	m = get_tree().get_root().get_node("game").find_node("State").get_money()
	get_tree().get_root().get_node("game").find_node("State").set_money(m + 10)
	return 1

