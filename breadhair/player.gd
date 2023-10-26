extends CharacterBody2D

@export var speed = 600
@export var gravity = 30
@export var jump_force = 1000
var double_jump = false
func _ready():
	$AnimatedSprite2D.play("default")
func hurt():
	$AnimatedSprite2D.play("white")
	$AnimatedSprite2D.play("default")

func _physics_process(d):
	if position.x > get_viewport_rect().size.x:
		position.x = get_viewport_rect().size.x
	if position.y > get_viewport_rect().size.y:
		position.y = get_viewport_rect().size.y
	if !is_on_floor():
		velocity.y += gravity
		if velocity.y > 1000:
			velocity.y = 1000
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			double_jump = true
			velocity.y = -jump_force
		if double_jump && !is_on_floor():
			velocity.y = -jump_force
			double_jump = false
	var horizontal_direction = Input.get_axis("left", "right")
	velocity.x = speed * horizontal_direction
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = true
	elif velocity.x < 0:
		$AnimatedSprite2D.flip_h = false
	move_and_slide()


func _on_area_2d_body_entered_real(body):
	if (len(str(body)) == 37):
		$"../player2".play()
		$AnimatedSprite2D.play("white")
		$Area2D.player2_points += 1


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://musicbox/p_1_winscreen_mb.tscn")
