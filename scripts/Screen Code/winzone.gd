extends Area2D




func _on_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		get_tree().change_scene_to_file("res://Screens/In-game Screens/win_screen.tscn")
