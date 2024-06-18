extends TouchScreenButton

#Включение/отключение видимости сенсорной кнопки "вправо"

func _physics_process(delta):
	if get_tree().paused == true:
		visible=false
	else:
		visible=true
