class_name Purchasable extends Resource

@export_category("Text")
@export var name : String = "New Purchasable"
@export var description : String = "Description of New Purchasable"

@export_category("Aesthetic")
@export var texture : Texture2D
@export var rarity : Gamemanager.Rarities = Gamemanager.Rarities.UNKNOWN

@export_category("Value")
@export var base_cost : int = 10
@export var cost_increment : float = 1.1
