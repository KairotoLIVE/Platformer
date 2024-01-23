extends DirectionalLight3D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	look_at(get_parent().get_parent().get_child(4).position)
