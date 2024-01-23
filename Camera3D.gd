extends Camera3D

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _input(event):
	if event is InputEventMouseMotion :
		rotation.x -= deg_to_rad(event.relative.y * 0.1)
		rotation.x = clamp(rotation.x,deg_to_rad(-90),deg_to_rad(90))
		get_parent().rotation.y -= deg_to_rad(event.relative.x * 0.1)
