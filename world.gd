extends Node

@onready var player = $player
@onready var ball = $Ball
var ballSwag = 736
var world = "res://winCondition.tscn"

func _physics_process(delta):
	
	var bricks = get_tree().get_nodes_in_group('bricks')
	
	
	if player.position.y > ballSwag:
		print('Player Velocity: ', player.velocity)
		print('Ball Velocity: ', ball.velocity)
		ballSwag = player.position.y
	#	ball.velocity = Vector2.ZERO
		print(player.move_and_slide())
		
	if bricks == []:
		get_tree().change_scene_to_file(world)
