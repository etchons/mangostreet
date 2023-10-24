extends AnimatedSprite2D


var spd = -500

func _ready():
	pass

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
