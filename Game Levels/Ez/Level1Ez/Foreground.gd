extends TextureRect


func _process(_delta):
	var color = $"..".SelectedColor
	modulate = color
