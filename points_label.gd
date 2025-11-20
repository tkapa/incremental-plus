class_name PointsLabel extends HBoxContainer

@onready var points_total : Label = $PointsTotal

func _ready():
	Signalbus.points_added.connect(_on_points_updated)
	
func _on_points_updated(new_total: int):
	points_total.text = str(new_total)
