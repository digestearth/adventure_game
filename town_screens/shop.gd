extends Control

# Declare member variables here. Examples:
var m = 0
var text = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	m = get_tree().get_root().get_node("game").find_node("State").get_money()
	text = "money: " + str(m)
	get_node("money").set_text(text)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_spend_money_pressed():
	print("losing money...")
	m = get_tree().get_root().get_node("game").find_node("State").get_money()
	get_tree().get_root().get_node("game").find_node("State").set_money(m - 10)
	text = "money: " + str(m - 10)
	get_node("money").set_text(text)
	return 1

