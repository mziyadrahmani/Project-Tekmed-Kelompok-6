extends Control



func _on_next_pressed():
	$"../Alert".visible = true
	$"../Bruh".play()
	#Global.selectedLevel = "res://Game Levels/Ez/Level2Ez.tscn"
	#$"../Transition".play()
	#await get_tree().create_timer(0.5).timeout
	#$"../Loading".visible = true
	#$"../Loading/AnimationPlayer".play("loading")


func _on_back_pressed():
	$"../ExitPrompt".visible = true


func _on_reset_pressed():
	get_tree().reload_current_scene()
	print ("scene reloaded")


func _on_visibility_changed():
	$b1.play("default",0.5)
	$b2.play("default")
	$b3.play("default")
