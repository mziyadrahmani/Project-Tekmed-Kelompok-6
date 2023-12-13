extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Transition.play()
	$Move.play("moving")
	await get_tree().create_timer(0.5).timeout
	$BGM.play()

func _input(_event):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) :
		$Pop.play()


func _on_audio_stream_player_finished():
	$BGM.play()
