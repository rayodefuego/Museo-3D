extends KinematicBody

var input_vector = Vector3.DOWN
var velocity = Vector3.ZERO

var move_speed = 5.0

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _physics_process(delta):
	
	input_vector = Vector3(Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down"), 0, Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"))
	input_vector = input_vector.normalized()
	
	var foward = global_transform.basis.z
	var right = global_transform.basis.x
	
	var direction = (foward * input_vector.z + right * input_vector.x)
	
	velocity.x = direction.x * move_speed
	velocity.z = direction.z * move_speed
	
	move_and_slide(velocity)



