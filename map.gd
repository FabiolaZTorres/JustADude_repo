extends Area2D

@export var loseState: CanvasLayer
@export var player: CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$Music.play()
	loseState.hide()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(player.dead):
		player.hide()
		loseState.show()
