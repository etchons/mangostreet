extends AnimatedSprite2D

var rng = RandomNumberGenerator.new()
var enemyinstance = preload("res://enemy_for_musicbox.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(get_viewport_rect().size.x/2,get_viewport_rect().size.y/2)
	
func _process(delta):
	play("default")
	
	if $"../player".p1points == 5:
		get_tree().change_scene_to_file("res://p_1_winscreen_mb.tscn")
	elif $"../player2".p2points == 5:
		get_tree().change_scene_to_file("res://p_2_winscreen_mb.tscn")
	
func timer_to_instance():
	var s_time = Time.get_ticks_msec()
	if (s_time > 5000):
		inst(Vector2(1575,0))


func inst(pos):
	var instance = enemyinstance.instantiate()
	instance.position = pos
	add_child(instance)
