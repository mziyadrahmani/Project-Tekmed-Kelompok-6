extends Control

	


func _on_kembali_button_up():
	Global.save()
	var transition_node = get_node("/root/Control/Transition")
	transition_node.play()
	await get_tree().create_timer(0.5).timeout
	visible = false;


func _on_music_pressed():
	Global.music = !Global.music
	if Global.music == false :
		print("Music_OFF")
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), true)
		
	else :
		print("Music_ON")
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), false)
	Global.save()


func _on_sfx_pressed():
	Global.sfx = !Global.sfx
	if Global.sfx == false :
		print("sfx_OFF")
		AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), true)
		
	else :
		print("sfx_ON")
		AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), false)
	Global.save()


func _on_visibility_changed():
	$VBoxContainer/Label2/Music.button_pressed = Global.music
	$VBoxContainer/Label3/SFX.button_pressed = Global.sfx
