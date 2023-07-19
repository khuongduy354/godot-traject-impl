extends KinematicBody2D

var velocity = Vector2.ZERO
const SPEED = 500
func _motion(delta): 
	var collision = move_and_collide(velocity*delta,false,true,false)
	if collision: 
		velocity = velocity.bounce(collision.normal)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
