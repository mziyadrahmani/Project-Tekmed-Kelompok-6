extends Control




func _on_kembali_button_up():
	var transition_node = get_node("/root/Control/Transition")
	transition_node.play()
	await get_tree().create_timer(0.5).timeout
	visible = false;


func _on_level_1_button_up():
	Global.selectedLevel = "res://Game Levels/Ez/Level1Ez.tscn"
	var transition_node = get_node("/root/Control/Transition")
	transition_node.play()
	await get_tree().create_timer(0.5).timeout
	$Loading.visible = true
	$Loading/AnimationPlayer.play("loading")
