extends Node

var points : int = 0

func _ready():
	Signalbus.add_points.connect(_on_add_points)
	Signalbus.points_added.emit(points)

func _on_add_points(added: int):
	points += added
	Signalbus.points_added.emit(points)

func current_points() -> int:
	return points;
