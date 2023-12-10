extends Control


func _input(_event):
	if Input.is_anything_pressed() :
		get_tree().change_scene_to_file("res://Mainmenu/mainmenu.tscn")
func _ready():
	$ColorRect2.visible = true
	$AnimationPlayer.play("FadeIn")
	await get_tree().create_timer(1.5).timeout
	$AnimationPlayer.play("FadeOut")
	await get_tree().create_timer(1.5).timeout
	get_tree().change_scene_to_file("res://Mainmenu/mainmenu.tscn")
