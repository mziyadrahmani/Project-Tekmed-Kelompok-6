extends Control


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#if visible == true && $AnimationPlayer.is_playing() :
		#$AnimationPlayer.play("loading")


func _on_animation_player_animation_finished(_loading):
	#print(phew)
	var target = Global.selectedLevel
	#var transition_node = get_node("/root/Control/Transition")
	#transition_node.play()
	await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file(target)
