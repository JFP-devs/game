# MeleeWeapon.gd
extends Weapon
class_name Weapon_Range
@export var ammo = 10

func _ready():
	damage = 3  # Override the damage property for ranged weapon

func attack():
	if ammo > 0:
		
		ammo -= 1
		print("Shooting ranged weapon with damage: %d" % damage)
	else:
		print("Out of ammo")

