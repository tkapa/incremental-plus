class_name HitboxComponent extends Area2D

signal hit(attack: Attack)

func _on_body_entered(body: HurtboxComponent):
	hit.emit(body.attack)
