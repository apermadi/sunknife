extends CharacterBody2D

@onready var state_machine: StateManager = $StateManager

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@export var target : Node2D

func _ready() -> void:
	state_machine.init_state_manager()
	position = $Path2D.curve.get_point_position(0)
	pass

func _process(_delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	state_machine._physics_process(delta)
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
