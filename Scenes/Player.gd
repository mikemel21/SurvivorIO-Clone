class_name Player

extends CharacterBody2D
@export var moveSpeed = 400
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var character_body_2d = $"."


func get_input ():
	var input_dir = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = input_dir * moveSpeed

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Right"):
		animated_sprite_2d.flip_h = false
		animated_sprite_2d.play("player_run")
	elif Input.is_action_pressed("Left"):
		animated_sprite_2d.flip_h = true
		animated_sprite_2d.play("player_run")
	
		
	get_input()
	
	move_and_slide()
	
