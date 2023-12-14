extends TextureRect


func _process(delta):
	var color = $"..".SelectedColor
	modulate = color
