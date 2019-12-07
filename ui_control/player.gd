extends Container

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func clean_buttons():
	for i in range(0, get_child_count()):
		get_child(i).queue_free()
	return 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
