extends RayCast


func _physics_process(delta):
	var colider = get_collider()
	
	if colider != null and Input.is_action_just_pressed("click"):
		print(colider.name)
		colider.prueba()
	
	
