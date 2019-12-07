extends Control

# Declare member variables here. Examples:
# var a = 2
var player = "text"
var enemy = "text"
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# Called when the node enters the scene tree for the first time.
func _ready():
	self._update()
	
func _clean():
	get_node("player").clean_buttons()
	get_node("enemy").clean_buttons()
	return 1
	
func _update():
	self._clean()
	player = get_tree().get_root().get_node("game").find_node("State").get_player_entity()
	enemy = get_tree().get_root().get_node("game").find_node("State").get_enemy_entity()

	var p = load(player)
	var e = load(enemy)
	
	get_node("player").add_child(p.instance())
	get_node("enemy").add_child(e.instance())
	

