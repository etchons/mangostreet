extends AnimatedSprite2D
var anim: int

func _ready():
	anim = 1

func _process(delta):
	if (anim == 1):
		play("idle")
