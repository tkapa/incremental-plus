extends Node

signal tick_timeout

signal add_points(added_points: int)
signal points_added(total_points: int)

signal handle_purchase(purchasable: Purchasable, cost: int)
