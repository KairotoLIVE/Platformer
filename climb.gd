extends Area3D

func _process(delta):
	if has_overlapping_bodies() and Input.is_action_just_pressed("jump") :
		for body in get_overlapping_bodies() :
			if !body.has_meta("player") and body.has_meta("climbable") :
				AnimComms.end_position = body.position + Vector3(0,body.position.y/2,0)
				AnimComms.height_position = Vector3(get_parent().position.x,body.position.y/2,get_parent().position.z) 
				get_parent().get_child(4).play("climb")
