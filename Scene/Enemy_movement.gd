extends CharacterBody2D


const SPEED = 350.0

signal hit

# Get the gravity from the project settings to be synced with RigidBody nodes.

func _find_closest_player(players):
	var astar = AStar2D.new()
	for i in range(len(players)):
		astar.add_point(i, players[i].position)
	var id = astar.get_closest_point(self.position)
	return players[id]

func _physics_process(delta):
	var players = get_tree().get_nodes_in_group("player")
	var closest_player = players[0] #_find_closest_player(players)
	velocity = (closest_player.position - global_position).normalized() * 150
	move_and_slide()


func _on_hit():
	print("hit")
