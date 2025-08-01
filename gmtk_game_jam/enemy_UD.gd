extends Node2D
const speed =60
var direction = 1
@onready var ray_castup: RayCast2D = $RayCastup
@onready var ray_castdown: RayCast2D = $RayCastdown

func _process(delta: float):
	if ray_castup.is_colliding():
		direction = -1
		Sprite2D.flip_h = true  #cahnge to animated sprite later when we put the design 
	if ray_castdown.is_colliding():
		direction = 1
		Sprite2D.flip_h = false  #cahnge to animated sprite later when we put the design
	
	position.y = direction * speed * delta
func _draw():
	draw_circle(Vector2.ZERO,50, Color.LEMON_CHIFFON , true)
