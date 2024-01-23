extends AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var anim = get_animation("climb")
	anim.track_set_key_value(0,0,get_parent().position)
	anim.track_set_key_value(0,1,AnimComms.height_position)
	anim.track_set_key_value(0,2,AnimComms.end_position)
