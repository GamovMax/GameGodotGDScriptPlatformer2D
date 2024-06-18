extends TouchScreenButton

func _physics_process(delta):
	if Main.win==true:
		pause_mode = Node.PAUSE_MODE_PROCESS
	if (get_tree().paused == true and Main.win==false and Main.g_o==false):
		visible=false
	else:
		visible=true
