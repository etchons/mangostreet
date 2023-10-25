extends Area2D

var spd = -500
var p2points = 0
var rng = RandomNumberGenerator.new()
func _ready():
	position = Vector2((get_viewport_rect().size.x/2),get_viewport_rect().size.y/2)

func _process(delta):
	position = position.clamp(Vector2.ZERO, get_viewport_rect().size)
	if Input.is_action_pressed("p2_left"):
		position.x += spd * delta
		$AnimatedSprite2D.flip_h = false
	if Input.is_action_pressed("p2_right"):
		position.x -= spd * delta
		$AnimatedSprite2D.flip_h = true
	if Input.is_action_pressed("p2_up"):
		position.y += spd * delta
		$AnimatedSprite2D.flip_v = false
	if Input.is_action_pressed("p2_down"):
		position.y -= spd * delta
		$AnimatedSprite2D.flip_v = false


func _on_body_entered_p2(body):
	print("player2")
	p2points += 1
	$"../Area2D".position = Vector2(rng.randi_range(0,get_viewport_rect().size.x-100),rng.randi_range(0,get_viewport_rect().size.y-100))
