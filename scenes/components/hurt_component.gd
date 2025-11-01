class_name HurtComponent
extends Area2D

@export var tool : DataTypes.Tools = DataTypes.Tools.None

signal on_hurt

func _on_area_entered(_area:Area2D) -> void:
	var hit_component = _area as HitComponent

	if tool == hit_component.current_tool:
		on_hurt.emit(hit_component.hit_damage)
