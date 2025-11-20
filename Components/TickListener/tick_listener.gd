extends Node

signal on_tick

func _ready():
	Signalbus.tick_timeout.connect(on_tick_timeout)

func on_tick_timeout():
	on_tick.emit()
