extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Transition.play()
	await get_tree().create_timer(0.5).timeout


