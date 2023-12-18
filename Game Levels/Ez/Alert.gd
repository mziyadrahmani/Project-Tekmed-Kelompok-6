extends TextureRect




func _on_confirm_2_pressed():
	Global.selectedLevel = "res://Mainmenu/mainmenu.tscn"
	$"../Transition".play()
	await get_tree().create_timer(0.5).timeout
	$"../Loading".visible = true
	$"../Loading/AnimationPlayer".play("loading")
