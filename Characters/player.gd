extends CharacterBody2D

const SPEED = 150.0
@export var health = 100.0
@export var dead = false
'@export var plank: RigidBody2D
var itemPicked = false'


func _physics_process(delta):
	
	#plank.hide()
	
	# Get the input direction and handle the movement/deceleration.
	var direction = Input.get_axis("move left", "move right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	var height = Input.get_axis("move up", "move down")
	if height:
		velocity.y = height * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
		
		
	# Play correct animation
	if velocity.length() > 0:
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
		
	if velocity.x != 0:
		$AnimatedSprite2D.animation = "walkSideBill"
		$AnimatedSprite2D.flip_v = false
		$AnimatedSprite2D.flip_h = velocity.x > 0
	elif velocity.y > 0:
		$AnimatedSprite2D.animation = "walkFrontBill"
	elif velocity.y < 0:
		$AnimatedSprite2D.animation = "walkBackBill"

	move_and_slide()
	
	

func damage_recieved(damage: float):
	health -= damage
	
	if(health <= 0):
		dead = true
		

'func _on_plank_body_entered(body):
	print("area entered")
	if(!itemPicked && body.name == "wooden plank"):
		itemPicked = true
		plank.show()
		print("item picked")'
		
