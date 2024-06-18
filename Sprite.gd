extends Sprite


func _physics_process(delta):
	if Main.win == true and get_tree().paused == true:
		visible=true
	else:
		visible=false
