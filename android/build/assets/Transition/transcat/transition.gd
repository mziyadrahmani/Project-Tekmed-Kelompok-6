extends Control



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if visibility_changed && visible == true :
		$AnimatedSprite2D.play("default");
		


func _on_animated_sprite_2d_animation_finished():
	visible = false;
	print ("finished")
