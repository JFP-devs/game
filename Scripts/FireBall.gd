extends Area2D



var speed = 100
var direction
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	direction = (get_global_mouse_position() - global_position).normalized()
	#get_tree().current_scene.add_child(self)
	#self.global_position = self.global_position
	pass

func _process(delta):
	global_position += direction * speed * delta


#func _physics_process(delta):
	#global_position += direction * speed * delta
	#pass
	

func _on_body_entered(body):
	queue_free()
	print("body entered")
	body.queue_free()
