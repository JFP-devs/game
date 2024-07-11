extends StaticBody2D

var enemy_scene
# Called when the node enters the scene tree for the first time.
func _ready():
	return
	var timer = $Timer
	timer.connect("timeout", self._on_Timer_timeout)
	timer.wait_time = 5.0
	timer.start()
	enemy_scene = preload("res://Scene/Enemy.tscn")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_Timer_timeout():
	print("Timeout")
	var enemy = enemy_scene.instantiate()
	var mob_spawn_location = $Path2D/PathFollow2D
	mob_spawn_location.progress_ratio = randf()
	enemy.position = mob_spawn_location.position
	self.add_child(enemy)
	$Timer.start()
