extends Area2D

signal fruit_eaten


func _on_fruit_area_entered(area):
	if(area.name == "head"):
		queue_free()
		emit_signal("fruit_eaten")
