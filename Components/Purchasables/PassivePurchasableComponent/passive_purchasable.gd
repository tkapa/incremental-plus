class_name PassiveComponent extends Node

var _purchasable : Passive

func init(purchasable: Passive):
	_purchasable = purchasable
	Signalbus.tick_timeout.connect(_on_tick_timeout)

func _on_tick_timeout():
	Signalbus.add_points.emit(_purchasable.point_value)
