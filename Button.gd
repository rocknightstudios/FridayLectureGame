extends Button

func _on_Button_pressed():
	get_parent().get_node("Score").text = str(0)
	get_parent().get_parent().player.score = 0
	get_parent().get_parent().player.position.x = get_viewport().get_mouse_position().x # Accessing individual components of compound variable is faster than assigning Vector2
	get_parent().get_node("GameOver").visible = false
	get_parent().get_parent().game_is_running = true
	# You can make Spawner children to manage themselves or manage them from their manager or relative to their manager.
	var spawner = get_node("/root/World/Spawner") # You can always provide also full path to the node.
	for i in range(0, spawner.get_child_count()): # In for loop you don't have to set length - 1 to compare against the count, you just provide the bound as it is.
		spawner.get_child(i).queue_free() # We get rid of all the existing falling items.