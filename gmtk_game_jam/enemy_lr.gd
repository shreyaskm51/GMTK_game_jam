extends Node2D
const speed=60
var direction = 1
@onready var left_coll = $RayCastleft
@onready var right_coll = $RayCastright
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if left_coll.is_colliding():
		direction = 1
		Sprite2D.flip_h = false #cahnge to animated sprite later when we put the design
	if right_coll.is_colliding():
		direction = -1
		Sprite2D.flip_h = true  #cahnge to animated sprite later when we put the design
	position.x += direction * speed * delta
func _draw():
	draw_circle(Vector2.ZERO,50, Color.LEMON_CHIFFON , true)
