extends Node2D

# Declare member variables here. Examples:
var life_points = 1000
var max_body_health = 100
var bodyparts = {"head":100, "body":100}
var txt = "temp"
var temp = 0

# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _update_health():
	for part in bodyparts:
		life_points -= (max_body_health - bodyparts[part])
	get_node("lifePoints").set_text("Life Points: " + str(life_points))
	return 1
	
func _update_body_health():
	for part in bodyparts:
		txt = ("Health: " + str(bodyparts[part]))
		get_node(part).get_node("health").set_text(txt)
	
func set_health(part, n):
	bodyparts[part] = n
	return 1
	
func get_health(part):
	return bodyparts[part]

func _on_headRect_gui_input(event):
	if (event is InputEventMouseButton && event.pressed):
		set_health("head", (get_health("head") - 5))
		self._update_health()
		self._update_body_health()

func _on_bodyRect_gui_input(event):
	if (event is InputEventMouseButton && event.pressed):
		set_health("body", (get_health("body") - 5))
		self._update_health()
		self._update_body_health()
