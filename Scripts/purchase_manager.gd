extends Node

const PASSIVE_SCENE_RES : PackedScene = preload("res://Components/Purchasables/PassivePurchasableComponent/passivePurchasable.tscn")

func _ready():
	Signalbus.handle_purchase.connect(_on_handle_purchase)

func _on_handle_purchase(purchasable: Purchasable, cost: int):
	Signalbus.add_points.emit(-cost)
	var type = purchasable.get_type()
	
	if (purchasable.get_type() == Purchasable.PurchasableType.PASSIVE): 
		var node = PASSIVE_SCENE_RES.instantiate()
		get_parent().add_child(node)
		node.init(purchasable)
		Signalbus.passive_purchased.emit(purchasable)
