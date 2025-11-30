class_name HealthComponent extends Node

signal on_death

var _max_health : int = 0
var _current_health : int = 0

func _ready():
	var hitbox = get_node_or_null("../" + MyConstants.HitboxName)
	if (hitbox == null):
		push_error("No Hitbox attached to " + name)
	
	if (hitbox is HitboxComponent):
		hitbox.hit.connect(_on_take_damage)
	else:
		push_error("No Hitbox attached to " + name)

func init(max_health: int):
	_max_health = max_health
	_current_health = _max_health

func _on_take_damage(attack: Attack):
	_current_health -= attack.damage
	
	if _current_health > 0:
		return
	
	on_death.emit()
