extends Node2D

var score = 0

func _ready():
	print("Player")

func _process(delta):
	position = Vector2(get_viewport().get_mouse_position().x, position.y)
