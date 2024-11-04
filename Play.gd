extends Button

func _on_quit_pressed():
	get_tree().quit() # Replace with function body.

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://World.tscn")
