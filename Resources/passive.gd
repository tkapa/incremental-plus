class_name Passive extends Purchasable

@export var point_value : int = 1

func get_type() -> PurchasableType:
	return PurchasableType.PASSIVE
