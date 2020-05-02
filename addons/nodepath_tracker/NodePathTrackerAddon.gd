tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("NodePathTracker", "Node", load("res://addons/nodepath_tracker/NodePathTracker.gd"), load("res://addons/nodepath_tracker/nodepath_tracker_icon.png"))

func _exit_tree():
	remove_custom_type("NodePathTracker")
