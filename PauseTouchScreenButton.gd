extends TouchScreenButton

func _physics_process(delta):
	if get_tree().paused == false:
		visible = true
	else:
		visible = false
