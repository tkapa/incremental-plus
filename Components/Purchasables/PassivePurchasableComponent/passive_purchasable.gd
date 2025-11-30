class_name PassiveComponent extends Node

var _purchasable : Passive

func init(purchasable: Passive):
	_purchasable = purchasable

func _on_tick_listener_component_on_tick():
	Signalbus.add_points.emit(_purchasable.point_value)
