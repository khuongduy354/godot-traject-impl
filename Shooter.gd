extends Node2D

onready var traject=$Trajectory
var BulletScene = preload("res://Bullet.tscn")


func shoot(delta): 
	var bullet = BulletScene.instance()
	var dir =self.global_position.direction_to(get_global_mouse_position())
	var temp_veloc = dir * bullet.SPEED
	bullet.velocity = temp_veloc
	
	traject.set_veloc(temp_veloc)
	traject._draw_traject(delta)
	add_child(bullet)
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"): 
		shoot(delta)
