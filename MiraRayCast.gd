extends RayCast


func _physics_process(delta):
	var colider: Area = get_collider()
	
	if colider != null:
		print(colider.name)
	
