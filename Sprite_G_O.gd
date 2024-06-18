extends Sprite


func _physics_process(delta):
	if Main.g_o == true and get_tree().paused == true:
		visible=true
	else:
		visible=false
