extends Camera2D

@export var worldLimits: TileMap

# Called when the node enters the scene tree for the first time.
func _ready():
	var mapSize = worldLimits.get_used_rect()
	var tileSize = worldLimits.cell_quadrant_size
	var mapSizePixeled = mapSize.size * tileSize
	limit_right = mapSizePixeled.x
	limit_bottom = mapSizePixeled.y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
