extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	move_and_slide()

func move_up(time):
	var timer = time
	while(timer > 0):
		velocity.y = -5
		timer -= 1;
		print(timer)

func _on_ray_cast_2d_colliding_ground():
	move_up(5)
