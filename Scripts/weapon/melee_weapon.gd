# MeleeWeapon.gd
extends Weapon
class_name Weapon_Melee

@export var swing_speed = 1.0

func _ready():
	damage = 20  # Override the damage property for melee weapon

func attack():
	print("Swinging melee weapon with damage: %d" % damage)
