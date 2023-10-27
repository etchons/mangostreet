extends VehicleBody3D

const MAX_STEER = 1
var ENGINE_POWER = 2000

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(delta):
	if ENGINE_POWER > 3500:
		ENGINE_POWER = 3500
	if Input.is_action_pressed("xx"):
		ENGINE_POWER += 10
	if !Input.is_action_pressed("xx") && ENGINE_POWER > 2000:
		ENGINE_POWER -= 10
	steering = move_toward(steering, Input.get_axis("p2_right", "p2_left") * MAX_STEER, delta*2.5)
	engine_force = Input.get_axis("yy", "xx") * ENGINE_POWER
