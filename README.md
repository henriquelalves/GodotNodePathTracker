# GodotNodePathTracker
A node to track and update in editor-time the NodePath of selected Nodes in the scene.


## How to install

Add the addon on your Godot project (you may copy the addon from this project folder, or install it via AssetLib). Then activate it on the project settings "Plugins" tab.

## How to use it

The addon will create a new node to use called "NodePathTracker", which inherits "Node". The NodePathTracker has an array of editable NodePaths that once set, will always update the paths of the nodes, even when you change them in the editor or rename them. To get those referenced nodes, you can call the `get_nodes` (returns the corresponding array of Nodes) or `get_node_by_name` (returns the first node with the name being looked for, or null).

## Why using it

I have some Unity experience, and one thing in Godot that I didn't like was the fact that I couldn't reference other nodes via code without having to update those references everytime I changed the layout of the scene; so I created the most straightforward solution to the problem, to be able to use it as a 'Scene NodePath dictionary', or locally in individual nodes that I want to track.
