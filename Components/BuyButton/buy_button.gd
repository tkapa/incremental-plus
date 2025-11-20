class_name BuyButton extends Button

@export var asset := 1;

@export var BASE_ASSET_COST := 10
@export var asset_cost_multiplier := 1.1

var current_asset_cost := BASE_ASSET_COST

func _on_button_down():
	if (!_calculate_valid_purchase()):
		return;

func _calculate_valid_purchase() -> bool:
	return Gamemanager.current_points() > current_asset_cost;
