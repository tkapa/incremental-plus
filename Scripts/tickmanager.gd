extends Node

const DEFAULT_TICK_TIME : float = 1

var tick_timer : Timer = Timer.new()

func _ready():
	_set_up_timer()

func _set_up_timer():
	tick_timer.one_shot = false
	tick_timer.timeout.connect(_on_tick_timeout)
	add_child(tick_timer)
	tick_timer.start(DEFAULT_TICK_TIME)

func _on_tick_timeout():
	Signalbus.tick_timeout.emit()
