extends RigidBody2D
@onready var game_manager = %GameManager

func _on_area_2d_body_entered(body):
	if(body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x
		if (y_delta > 30):
			print("Enemy Destroyed")
			Input.vibrate_handheld(150)
			queue_free()
			body.jump()
		else:
			print("Decrease player health")
			game_manager.decrease_health()
			Input.vibrate_handheld(500)
			if(x_delta > 0):
				body.jump_side(-100)
			else:
				body.jump_side(100)
