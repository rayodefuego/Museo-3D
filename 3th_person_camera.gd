extends Camera

var mouse_delta : Vector2 = Vector2() 
var mouse_sensitive: float = 45

onready var player = get_parent()

func _input(event):
	if event is InputEventMouseMotion:
		mouse_delta = event.relative
		

func _physics_process(delta):
	
	rotation_degrees.x -= mouse_delta.y * mouse_sensitive * delta
	rotation_degrees.x = clamp(rotation_degrees.x, -90, 90)
	
	player.rotation_degrees.y -= mouse_delta.x * mouse_sensitive * delta
	
	mouse_delta = Vector2()

