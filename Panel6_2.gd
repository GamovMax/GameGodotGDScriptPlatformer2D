extends Panel

func _ready():
	Main.win = false
	Main.g_o = false
	get_tree().paused = false

func _physics_process(delta):
	#обработка нажатия на кнопку паузы	
	if (Input.is_action_just_pressed("pause") and Main.win == false and Main.g_o == false):
		if get_tree().paused == false:
			get_tree().paused = true
		else:
			get_tree().paused = false
			#Main.first = false
	
	if get_tree().paused == true:
		visible = true
	else:
		visible = false
	
	#обработка нажатия на кнопку выхода
	if (Input.is_action_pressed("exit") and get_tree().paused == true and Main.win==true) or (Input.is_action_pressed("exit") and get_tree().paused == true and Main.g_o==true):
		get_tree().quit()
	
	#обработка нажатия на кнопку рестарт
	if Input.is_action_just_pressed("reload") and get_tree().paused == true and Main.g_o==true:
		get_tree().change_scene("res://Level6_2.tscn")
		get_tree().paused = false
		Main.win=false
		Main.g_o=false
