extends Node

var points : int = 0

func _ready():
	Signalbus.add_points.connect(_on_add_points)
	Signalbus.handle_purchase.connect(_on_handle_purchase)
	Signalbus.points_added.emit(points)

func _on_add_points(added: int):
	points += added
	Signalbus.points_added.emit(points)

func _on_handle_purchase(purchasable: Purchasable, cost: int):
	# TODO: Instantiate the purchasable
	_on_add_points(-cost)
	return

func current_points() -> int:
	return points;



enum Rarities {UNKNOWN = -1, COMMON, UNCOMMON, RARE, MYTHIC, LEGENDARY}
