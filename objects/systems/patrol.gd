extends State

@export var root_enemy : Node
#var path: Path2D

#var first_point: Vector2
#var second_point: Vector2
var elapsed_time: float = 0.0
#@export var target : Node2D

func _enter() -> void:
	pass

func _ready() -> void:
	
	# print("im the patrol state")
	#first_point = $Path2D.curve.get_point_position(0)
	#second_point = $Path2D.curve.get_point_position(1)
	
	pass

func _physics_process(delta: float) -> void:
	if abs((root_enemy.target.position - root_enemy.position)) < Vector2(2.0,2.0):
		print("im here")
		#get new target
		pass
	else:
		print("moving theoretically")
		#keep going to target
		move_toward(root_enemy.position.x, root_enemy.target.position.x, delta)
	
	#if (parent.position <= first_point):
		#parent.position = lerp(first_point, second_point, elapsed_time)
		#if parent.position == second_point:
			
			
	
	#if (parent.position >= second_point):
		#parent.position = lerp (second_point, first_point, elapsed_time)
	#elapsed_time

func _exit() -> void:
	print("patrol: im the exit state")
