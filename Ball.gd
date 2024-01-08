extends CharacterBody2D

@export var speed = 500


var world = "res://Breakout/Worlds/world.tscn"
var direction = Vector2(0.5, 1)
var is_running = false 


@onready var ball_visibility_notifier = get_node("BallVisibilityNotifier")

func _physics_process(delta):
	if Input.is_action_just_pressed("fire"):
		is_running = true
	elif not is_running:
		return
	
	velocity = speed * direction * delta
	var collision = move_and_collide(velocity)
	
	if collision != null:
		print(str("Collider:" , collision.get_collider()))
		direction = direction.bounce(collision.get_normal())
		if collision.get_collider().is_in_group("bricks"):
			collision.get_collider().queue_free()
			
	check_if_game_over()

func check_if_game_over():
	if not ball_visibility_notifier.is_on_screen():
		print('Game over')
		get_tree().change_scene_to_file(world)
