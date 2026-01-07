extends CharacterBody3D


func _physics_process(delta: float) -> void:
	
	var input_axis  = Input.get_vector("back","forward","left","right")
	
	velocity.z = -input_axis.x
	velocity.x = input_axis.y
	

	
	move_and_slide()
	
	
	if not is_on_floor():
		velocity.y-=1*delta
	else: 
		velocity.y=0
	
	
