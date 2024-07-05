# MeleeWeapon.gd
extends Weapon
class_name Weapon_Range
@export var ammo = 10
var projectile_scene
func _ready():
	projectile_scene = preload("res://Scene/FireBall.tscn")
	damage = 3  # Override the damage property for ranged weapon

func attack():
	if ammo > 0:
		var projectile = projectile_scene.instantiate()
		self.add_child(projectile)
		ammo -= 1
		print("Shooting ranged weapon with damage: %d" % damage)
	else:
		print("Out of ammo")

