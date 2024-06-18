extends TouchScreenButton

func _physics_process(delta):
	if Main.win == true and get_tree().paused == true:
		visible=true
	else:
		visible=false
	
	if Main.win == true and (Input.is_action_just_pressed("next") or Input.is_action_just_pressed("pause")):
		get_tree().change_scene("res://Level6_1.tscn")
		#Main.win = false
		#get_tree().paused = false
