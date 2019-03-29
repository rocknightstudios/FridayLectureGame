extends Node2D

export (PackedScene) var spawned_item : PackedScene = null
export var test = []

func _ready():
	print("Spawner")

const SPAWN_TIME = 1.0
var spawn_time_left : float = SPAWN_TIME

func spawn_item():
	var current_spawned_item = spawned_item.instance()
	add_child(current_spawned_item)
	current_spawned_item.position = Vector2(randf() * get_viewport().size.x, .0)

func _process(delta):
	# Just an example you can check if the game is running or there are two other examples, which are more appropriate for their use cases
	# Just removing player from hierarchy from the world node. DOD approach.
	# Or managing each object lifetime from itself. OOP approach.
	# This is just an approach. :D
	if get_parent().game_is_running: 
		if spawn_time_left < .0:
			spawn_item()
			spawn_time_left = SPAWN_TIME
		else:
			spawn_time_left -= delta