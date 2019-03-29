# The project is a bit more complex than it could be.
# I am just showing off that you can use various approaches.

extends Node2D

var game_is_running : bool = true
# The same as declaring and initializing variable in _ready() function, just a bit more convenient.
onready var player : Node2D = get_node("Player") # So that we have an access to the object, even if it is removed from the scene tree.

func _process(delta):
	if game_is_running:
		add_child(player)
	else:
		remove_child(player)