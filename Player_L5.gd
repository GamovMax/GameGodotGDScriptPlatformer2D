extends KinematicBody2D





var speed = 15
var jumpForce = 400
var gravity = 400
var reload
var vel = Vector2()


onready var imagePlayer = get_node("player")

func _ready():
	imagePlayer.flip_h = true
	
func _physics_process(delta):
	if Input.is_action_pressed("player_left"):
		vel.x -= speed
	elif Input.is_action_pressed("player_right"):
		vel.x += speed
	
	vel.y += gravity * delta
	
	if Input.is_action_pressed("player_jump") and is_on_floor():
		vel.y -= jumpForce
	
			
	if global_position.y>1500:
		#reload=get_tree().reload_current_scene()
		$Panel.visible = true
		get_tree().paused = true
		Main.g_o=true
	
	if global_position.x>8241.52 and global_position.y<-835.136:
	#if global_position.x<8216:
		
		$Panel.visible = true
		get_tree().paused = true
		Main.win = true
	
	
	
	if Input.is_action_pressed("exit"):
		get_tree().quit()
	
	
	vel = move_and_slide(vel, Vector2.UP)
	
	if vel.x < 0:
		imagePlayer.flip_h = true
	if vel.x > 0:
		imagePlayer.flip_h = false
