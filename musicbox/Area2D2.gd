extends Area2D

var spd = -500
var p1points = 0

var rng = RandomNumberGenerator.new()
func _ready():
	position = Vector2((get_viewport_rect().size.x/2),get_viewport_rect().size.y/2)

func _process(delta):
	position = position.clamp(Vector2.ZERO, get_viewport_rect().size)
	if Input.is_action_pressed("left"):
		position.x += spd * delta
		$AnimatedSprite2D.flip_h = false
	if Input.is_action_pressed("right"):
		position.x -= spd * delta
		$AnimatedSprite2D.flip_h = true
	if Input.is_action_pressed("jump"):
		position.y += spd * delta
		$AnimatedSprite2D.flip_v = false
	if Input.is_action_pressed("down"):
		position.y -= spd * delta
		$AnimatedSprite2D.flip_v = false


func _on_body_entered(body):
	print("player1")
	p1points += 1
	Input.start_joy_vibration(1,1,1,1)
	$"../Area2D".position = Vector2(rng.randi_range(0,get_viewport_rect().size.x-100),rng.randi_range(0,get_viewport_rect().size.y-100))
