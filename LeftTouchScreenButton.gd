extends TouchScreenButton

#Включение/отключение видимости сенсорной кнопки "влево"

func _physics_process(delta):
	if get_tree().paused == true:
		visible=false
	else:
		visible=true
