extends Actor
class_name Player

var user_index: int = 0

func _physics_process(delta: float) -> void:
	var vec = InputManager.get_vector(user_index, "game_left", "game_right", "game_up", "game_down")
	
	if vec:
		velocity = vec * 500.0
	else:
		velocity = vec * 0.0
	
	move_and_slide()
