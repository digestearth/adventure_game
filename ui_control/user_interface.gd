extends Control

var snapshot = ""
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	self._update()
	pass # Replace with function body.
	
func _clean():
	get_node("display").clean_buttons()
	return 1
	
func _update():
	print("updating...")
	self._clean()
	snapshot = get_tree().get_root().get_node("game").find_node("State").get_current_snapshot()

	var button = load(snapshot)
	var b = button.instance()
	get_node("display").add_child(b)
		
func _on_State_snapshot_changed(current_snapshot):
	self._update()
	pass # Replace with function body.

func _on_update_pressed():
	print("test")
	self._update()
	pass # Replace with function body.

func _on_clean_pressed():
	self._clean()
	pass # Replace with function body.

func _on_world_map_pressed():
	get_tree().get_root().get_node("game").find_node("State").set_current_snapshot("res://world_map/world_map.tscn")
	self._update()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

