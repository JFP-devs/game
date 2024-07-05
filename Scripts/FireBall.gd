extends Area2D


var speed = 400
var direction
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	var cursor = get_local_mouse_position()
	var weapon_slot = get_parent()
	direction = weapon_slot.position.direction_to(cursor)
	
	pass

func _physics_process(delta):
	position += direction * speed * delta
	
func _on_Bullet_body_entered():
	queue_free()
