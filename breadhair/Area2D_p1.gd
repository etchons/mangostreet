extends Area2D
var player2_points: int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player2_points == 3:
		get_tree().change_scene_to_file("res://musicbox/p_2_winscreen_mb.tscn")


func _on_body_of_player1_entered(body):
	#play animation
	pass


func _on_body_exited_p1(body):
	pass
