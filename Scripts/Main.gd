extends CanvasLayer


func _on_play_button_pressed() -> void:
	$MainMenu.visible = false
	add_child(preload("res://Prefabs/World.tscn").instantiate())


func _on_quit_button_pressed() -> void:
	get_tree().quit()
