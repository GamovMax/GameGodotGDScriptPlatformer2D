extends Node2D


func _physics_process(delta):
	#Переход к следующему меню с инструкцией
	if (Input.is_action_just_pressed("next")) or (Input.is_action_just_pressed("pause")):
		get_tree().change_scene("res://Menu.tscn")
	#Выход
	elif Input.is_action_just_pressed("exit"):
		get_tree().quit()
