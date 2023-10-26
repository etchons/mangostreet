extends RichTextLabel


func _ready():
	pass


func _process(delta):
	text = str(int($"..".time_left))
