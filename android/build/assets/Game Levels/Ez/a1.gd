extends TextureRect


var area_index = get_parent.get_child_index(self)

# Connect click event listener
#connect("input_event", self, "_on_click", area_index)

func _on_click(event):
	if event is InputEventMouseButton:
		# Check if left mouse button is clicked
		if event.button_index == 1:
			emit_signal("texturerect_clicked", area_index)
