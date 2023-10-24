extends CharacterBody2D

var rng = RandomNumberGenerator.new()
var enemyinstance = preload("res://enemy_for_musicbox.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(rng.randi_range(0,get_viewport_rect().size.x-100),rng.randi_range(0,get_viewport_rect().size.y-100))


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta):
	pass


func timer_to_instance():
	inst()


func inst():
	var instance = enemyinstance.instantiate()
	add_child(instance)
