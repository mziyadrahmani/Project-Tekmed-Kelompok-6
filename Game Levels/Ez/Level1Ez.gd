extends Control

var ColDefault = "#ffffff"
var SelectedColor

# Called when the node enters the scene tree for the first time.
func _ready():
	$Transition.play()
	ResetColor()


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
