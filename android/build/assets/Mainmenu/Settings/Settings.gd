extends Control



func _on_music_toggled(toggled_off):
	
	Global.music = !Global.music
	if Global.music == false :
		print("Music_OFF")
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), true)
	else :
		print("Music_ON")
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), false)

func _on_sfx_toggled(toggled_off):
	Global.sfx = !Global.sfx
	if Global.sfx == false :
		print("sfx_OFF")
		AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), true)
	else :
		print("sfx_ON")
		AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), false)



func _on_level_1_button_up():
	Global.selectedLevel = "res://Game Levels/Ez/Level1Ez.tscn"
	var transition_node = get_node("/root/Control/Transition")
	transition_node.play()
	await get_tree().create_timer(0.5).timeout
	$Loading.visible = true;


func _on_button_button_up():
	var transition_node = get_node("/root/Control/Transition")
	transition_node.play()
	await get_tree().create_timer(0.5).timeout
	$LevelEasy.visible = true;


func _on_kembali_button_up():
	var transition_node = get_node("/root/Control/Transition")
	transition_node.play()
	await get_tree().create_timer(0.5).timeout
	visible = false;
