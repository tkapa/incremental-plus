# https://github.com/theshaggydev/the-shaggy-dev-projects/blob/main/projects/godot-4/advanced-state-machines/src/state_machine/state.gd
class_name State extends Node

@export
var animation_name: String
@export
var move_speed: float = 400

var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

var animations: AnimatedSprite2D
var move_component: MovementComponentBase
var parent: CharacterBody2D

func enter() -> void:
	animations.play(animation_name)

func exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	return null

func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	return null

func get_movement_input() -> Vector2:
	return move_component.get_movement_direction()
