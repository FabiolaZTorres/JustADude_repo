extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("fire") 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_body_entered(body):
	if(body.name == "Player"):
		body.damage_recieved(25.0)
	
