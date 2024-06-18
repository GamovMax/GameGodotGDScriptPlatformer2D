extends TouchScreenButton


func _physics_process(delta):
	if (get_tree().paused == true and Main.win==false and Main.g_o==false):
		visible = true
	else:
		visible = false
