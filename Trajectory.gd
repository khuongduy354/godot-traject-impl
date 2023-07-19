extends Line2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func set_veloc(veloc): 
	$CollisionTest.velocity = veloc
	pass 
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _draw_traject(delta):
	var max_points = 300 
	clear_points()
	$CollisionTest.position=Vector2.ZERO
	for i in max_points: 
		add_point($CollisionTest.position)
		$CollisionTest._motion(delta)
