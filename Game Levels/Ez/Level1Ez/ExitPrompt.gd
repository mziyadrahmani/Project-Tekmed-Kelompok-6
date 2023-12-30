extends TextureRect




func _on_cancel_button_up():
	visible = false


func _on_confirm_button_up():
	Global.selectedLevel = "res://Mainmenu/mainmenu.tscn"
	$"../Transition".play()
	await get_tree().create_timer(0.5).timeout
	$"../Loading".visible = true
	$"../Loading/AnimationPlayer".play("loading")
	
