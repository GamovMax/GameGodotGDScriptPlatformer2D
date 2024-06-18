extends KinematicBody2D




var speed = 15
var jumpForce = 400
var gravity = 400
var reload
var vel = Vector2()


onready var imagePlayer = get_node("player")


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
	
	if global_position.x<-9372 and global_position.y<554:
	#if global_position.x<-216:
		
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
	

	
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
