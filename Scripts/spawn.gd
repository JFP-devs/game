extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var timer = $Timer
	timer.connect("timeout", self._on_Timer_timeout)
	timer.wait_time = 5.0
	timer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_Timer_timeout():
	print("Timeout")
	$Timer.start()
