extends CharacterBody2D


@onready var nav_agent: NavigationAgent2D = $NavigationAgent2D
@export var target_position: Vector2
@export var speed: float = 100.0
var health = 100


func _ready():
	nav_agent.set_target_position(target_position)


func _process(delta: float) -> void:
	if not nav_agent.is_navigation_finished():
		var next_point = nav_agent.get_next_path_position()
		velocity = (next_point - global_position).normalized() * speed
		move_and_slide()
