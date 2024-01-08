extends Node

func _physics_process(_delta):
	
	var bricks = get_tree().get_nodes_in_group('bricks')
	#var world = "res://Breakout/Worlds/world.tscn" this was the original
	var world  = "res://Noah_Breakout/Breakout/Worlds/world.tscn" #This is the new path
	if bricks == []:
		print('You Won!') 
		get_tree().change_scene_to_file(world)
