extends Control




func _on_kembali_button_up():
	var transition_node = get_node("/root/Control/Transition")
	transition_node.play()
	await get_tree().create_timer(0.5).timeout
	visible = false;


func _on_level_1_button_up():
	Global.selectedLevel = "res://Game Levels/Ez/Level1Ez/Level1Ez.tscn"
	var transition_node = get_node("/root/Control/Transition")
	transition_node.play()
	await get_tree().create_timer(0.5).timeout
	$Loading.visible = true
	$Loading/AnimationPlayer.play("loading")


func _on_button_2_pressed():
	Global.selectedLevel = "res://Game Levels/Ez/Level2Ez/Level2Ez.tscn"
	var transition_node = get_node("/root/Control/Transition")
	transition_node.play()
	await get_tree().create_timer(0.5).timeout
	$Loading.visible = true
	$Loading/AnimationPlayer.play("loading")


func _on_visibility_changed():
	$GridContainer/Control2/Level2.disabled = !Global.level2ez
	$GridContainer/Control3/Level3.disabled = !Global.level3ez
	$GridContainer/Control4/Level4.disabled = !Global.level4ez
	$GridContainer/Control5/Level5.disabled = !Global.level5ez





func _on_level_3_pressed():
	Global.selectedLevel = "res://Game Levels/Ez/Level3Ez/Level3Ez.tscn"
	var transition_node = get_node("/root/Control/Transition")
	transition_node.play()
	await get_tree().create_timer(0.5).timeout
	$Loading.visible = true
	$Loading/AnimationPlayer.play("loading")


func _on_level_4_pressed():
	Global.selectedLevel = "res://Game Levels/Ez/Level4Ez/Level4Ez.tscn"
	var transition_node = get_node("/root/Control/Transition")
	transition_node.play()
	await get_tree().create_timer(0.5).timeout
	$Loading.visible = true
	$Loading/AnimationPlayer.play("loading")


func _on_level_5_pressed():
	Global.selectedLevel = "res://Game Levels/Ez/Level5Ez/Level5Ez.tscn"
	var transition_node = get_node("/root/Control/Transition")
	transition_node.play()
	await get_tree().create_timer(0.5).timeout
	$Loading.visible = true
	$Loading/AnimationPlayer.play("loading")
