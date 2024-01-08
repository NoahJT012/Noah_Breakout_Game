extends CharacterBody2D

@export var speed = 1200

const player_container = preload("res://Breakout_player/PlayerContainer.tres")

var friction = 200

func _ready():
	pass 
	
func _physics_process(delta):
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_left"):
		velocity.x = -speed
	elif Input.is_action_pressed("move_right"):
		velocity.x = speed
	move_and_slide()
