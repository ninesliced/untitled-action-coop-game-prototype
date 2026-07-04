extends Entity
class_name Actor

enum ActorState {
	NORMAL,
	ROLL
}

# @export var state: ActorState = ActorState.NORMAL

var hold_entity: Entity = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_aspiration_zone_area_entered(area: Area2D) -> void:
	var entity = area.get_parent()
	if entity is Entity and hold_entity == null:
		entity.inhale()
		hold_entity = entity
