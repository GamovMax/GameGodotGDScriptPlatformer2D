extends Control

#Обработка нажатия кнопки continue
func _physics_process(delta):
	if (Input.is_action_just_pressed("next")) or (Input.is_action_just_pressed("pause")):
		get_tree().change_scene("res://Main.tscn")
