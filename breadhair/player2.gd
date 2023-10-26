extends CharacterBody2D

@export var speed = 600
@export var gravity = 30
@export var jump_force = 1000
var double_jump = false
func play():
	pass
	

func _physics_process(d):
	if position.x > get_viewport_rect().size.x:
		position.x = get_viewport_rect().size.x
	if position.y > get_viewport_rect().size.y:
		position.y = get_viewport_rect().size.y
	if !is_on_floor():
		velocity.y += gravity
		if velocity.y > 1000:
			velocity.y = 1000
	if Input.is_action_just_pressed("aa"):
		if is_on_floor():
			double_jump = true
			velocity.y = -jump_force
		if double_jump && !is_on_floor():
			velocity.y = -jump_force
			double_jump = false
	var horizontal_direction = Input.get_axis("p2_left", "p2_right")
	velocity.x = speed * horizontal_direction
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = true
	elif velocity.x < 0:
		$AnimatedSprite2D.flip_h = false
	move_and_slide()
