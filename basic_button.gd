class_name Add_Button extends Button

@export var point_value := 1

func _on_button_down():
	Signalbus.add_points.emit(point_value)
