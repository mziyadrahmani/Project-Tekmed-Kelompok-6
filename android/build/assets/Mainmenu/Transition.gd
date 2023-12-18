extends AnimatedSprite2D




func _on_animation_finished():
	
	var color_palette = [Color.PALE_VIOLET_RED, Color.GREEN_YELLOW, Color.ROYAL_BLUE, Color.YELLOW, Color.AQUA , Color.PINK]
	color_palette.shuffle()
	modulate = color_palette[0]
