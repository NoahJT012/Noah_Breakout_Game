extends CharacterBody2D

@export var acceleration = 500 

#const player_container = preload("res://Noah_Breakout/Breakout_player/PlayerContainer.tres")

var friction = 200  
func _ready():
	pass 
	
func _physics_process(_delta):
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("Left"):
		velocity.x = -acceleration 
	elif Input.is_action_pressed("Right"):
		velocity.x = acceleration 
	velocity.normalized()
	move_and_slide()
	
	
	velocity = velocity.move_toward(Vector2.ZERO, friction)
	
