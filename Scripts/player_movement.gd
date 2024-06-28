extends CharacterBody2D

@export var speed = 400

var current_weapon: Node = null

func _ready():
	# Equip default weapon
	equip_weapon(preload("res://Scene/DefaultWeapon.tscn"))

func _physics_process(delta):
	velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	move_and_slide()



func equip_weapon(weapon_scene):
	if current_weapon:
		current_weapon.queue_free()
	
	current_weapon = weapon_scene.instantiate()
	$WeaponSlot.add_child(current_weapon)

