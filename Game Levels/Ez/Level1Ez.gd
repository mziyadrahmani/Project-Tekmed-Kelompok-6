extends Control

var ColDefault = "#ffffff"
var SelectedColor = ColDefault

# Called when the node enters the scene tree for the first time.
func _ready():
	$Transition.play()
	ResetColor()
	
func _input(_event):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) :
		$Pop.play()

func ResetColor():
	$ColorArea/a1.modulate = ColDefault
	$ColorArea/a2.modulate = ColDefault
	$ColorArea/a3.modulate = ColDefault
	$ColorArea/a4.modulate = ColDefault
	$ColorArea/a5.modulate = ColDefault
	$ColorArea/a6.modulate = ColDefault
	$ColorArea/a7.modulate = ColDefault
	$ColorArea/a8.modulate = ColDefault
	$Foreground.modulate = ColDefault
	


func _on_back_button_up():
	$ExitPrompt.visible = true


func _on_reset_button_up():
	get_tree().reload_current_scene()
	print ("scene reloaded")


func _on_buckets_group_button_pressed(button):
	SelectedColor = button.modulate
	print(button.modulate)


func _on_bgm_finished():
	$BGM.play()
