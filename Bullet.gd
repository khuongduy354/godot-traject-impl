extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var velocity = Vector2.ZERO
const SPEED = 500
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var collision = move_and_collide(velocity*delta)
	if collision: 
		velocity = velocity.bounce(collision.normal)
