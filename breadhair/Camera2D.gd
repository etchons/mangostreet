extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x = ($"../player".position.x + $"../player2".position.x)/2
	position.y = ($"../player".position.y + $"../player2".position.y)/2 - 500
