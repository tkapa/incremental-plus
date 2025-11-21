class_name BuyButton extends Button

@export var puchasable : Purchasable

var current_asset_cost : int

func _ready():
	Signalbus.points_added.connect(_on_points_changed)
	current_asset_cost = puchasable.base_cost
	text = "Buy " + puchasable.name 
	
	if (!_is_purchasable()):
		disabled = true

func _on_button_down():
	if (!_is_purchasable()):
		return;
	
	_handle_purchase()

func _is_purchasable() -> bool:
	return Gamemanager.current_points() >= current_asset_cost;

func _on_points_changed(new_value: int): 
	if (!_is_purchasable()):
		disabled = true
		return
	
	disabled = false

func _handle_purchase():
	Signalbus.handle_purchase.emit(puchasable, current_asset_cost)
	current_asset_cost *= puchasable.cost_increment
