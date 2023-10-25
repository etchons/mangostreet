extends CharacterBody2D

var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(rng.randi_range(0,get_viewport_rect().size.x-100),rng.randi_range(0,get_viewport_rect().size.y-100))


# Called every frame. 'delta' is the elapsed time since the previous frame.



