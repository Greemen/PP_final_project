extends RigidBody2D

func _on_area_2d_body_entered(body):
	if(body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		if (y_delta > 30):
			print("Enemy Destroyed")
			queue_free()
			body.jump()
		else:
			print("Decrease player health")
			body.queue_free()
