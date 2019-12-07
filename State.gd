extends Node

var currentScene = null
var visibleScene = null
# Declare member variables here. Examples:
var Money = 0
var Location = "default"
var snapshot_array = []
var current_snapshot = "res://town_screens/home.tscn"

signal snapshot_changed(current_snapshot)
signal money_changed(money)
signal location_changed(location)

# Called when the node enters the scene tree for the first time.
func _ready():
	var root = get_tree().get_root()
	currentScene = root.get_child(root.get_child_count() - 1)
	# Replace with function body.
	
func goto_scene(path):
	call_deferred("_deferred_goto_scene",path)
	
func _deferred_goto_scene(path):
	currentScene.free()
	var s = ResourceLoader.load(path)
	currentScene = s.instance()
	get_tree().get_root().add_child(currentScene)
	get_tree().set_current_scene(currentScene)
	
func set_location(l):
	Location = l
	emit_signal("location_changed", Location)
	return 1
	
func set_money(m):
	Money = m
	emit_signal("money_changed")
	print("money = ", Money)
	return 1
	
func set_current_snapshot(snapshot):
	current_snapshot = snapshot
	emit_signal("snapshot_changed", current_snapshot)
	return 1

func get_location():
	return Location
	
func get_money():
	return Money
	
func get_current_snapshot():
	return current_snapshot
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
