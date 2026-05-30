'''
This is the base state class for all behaviors, utilizing Godot's type system - use as a parent, do not execute this!
'''
class_name State
extends Node

var parent: CharacterBody2D = get_parent()

func _enter() -> void:
	pass
	
func _physics_process(delta: float) -> void:
	pass
	
func _exit() -> void:
	pass
