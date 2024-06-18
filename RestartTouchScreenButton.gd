extends TouchScreenButton


func _physics_process(delta):
	if Main.win==true:
		pause_mode = Node.PAUSE_MODE_PROCESS
	if (get_tree().paused == true and Main.g_o==true):
		visible=true
