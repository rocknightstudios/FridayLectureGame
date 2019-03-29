extends Label

func _process(delta):
	if get_parent().get_parent().game_is_running:
		text = str(get_parent().get_parent().player.score)
