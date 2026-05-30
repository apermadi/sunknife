class_name StateManager
extends Node

# export all of the state nodes here
@onready
var patrol: State = $state/patrol
@onready
var attack: State = $state/attack

var current_state: State

func init_state_manager() -> void: 
	current_state = patrol

func _physics_process(delta: float) -> void:
	patrol._physics_process(delta)
	#if (current_state == patrol):
		#print("i am the patrol state, but im gonna finish now")
		#change_state(attack)
	#elif (current_state == attack):
		#print("im the attack pumpkin")
		#current_state._exit()

func change_state(new_state: State) -> void:
	current_state._exit()
	current_state = new_state

# when spawn, start in patrol state, walk along line
# when see player, enter attack
# when player out of sight, return to patrol
# "base" class should have a enter, update, exit
# actual manager itself should have a change state
