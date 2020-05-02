tool
extends Node

export(Array, NodePath) var nodepaths setget set_nodepaths

var _nodes : Array
var _entered_tree

func set_nodepaths(value):
	nodepaths = value
	if is_inside_tree():
		_update_nodes_array()

func get_nodes():
	return _nodes

func get_node_by_name(node_name : String):
	for node in _nodes:
		if (node.name == node_name):
			return node
	return null

func _update_nodes_array():
	_nodes.clear()
	for nodepath in nodepaths:
		_nodes.append(get_node(nodepath))

func _ready():
	_update_nodes_array()
	
	get_tree().connect("node_added", self, "_on_node_added")
	get_tree().connect("node_renamed", self, "_on_node_renamed")

func _on_node_added(node : Node):
	if (node == self):
		for i in range(nodepaths.size()):
			nodepaths[i] = get_path_to(_nodes[i])
		_update_nodes_array()
	else:
		var index = _nodes.find(node)
		if (index != -1):
			nodepaths[index] = get_path_to(node)
			_update_nodes_array()

func _on_node_renamed(node : Node):
	var index = _nodes.find(node)
	if (index != -1):
		nodepaths[index] = get_path_to(node)
		_update_nodes_array()
