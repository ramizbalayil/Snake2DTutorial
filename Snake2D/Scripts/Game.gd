extends Node2D

onready var fruit = preload("res://Scenes/fruit.tscn")

func _ready():
	add_fruit()
	pass

func add_fruit():
	var inst = fruit.instance()
	inst.position = Vector2(get_random_number(900,50), get_random_number(500,50))  ##The position should be random
	inst.connect("fruit_eaten", self, "spawn_next_fruit_and_tail")
	add_child(inst)

func spawn_next_fruit_and_tail():
	add_fruit()
	get_node("snake").add_tail()


func get_random_number(MAX, MIN):
	randomize()
	var num = randi()%MAX + MIN
	return num