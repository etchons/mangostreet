extends ColorRect

func _process(delta):
	size.x = get_viewport_rect().size.x
	size.y = get_viewport_rect().size.y
