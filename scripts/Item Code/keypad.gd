extends Control

const PASSWORD = "892"

@onready var label = $VBoxContainer/MarginContainer/Label

signal delete

func key_press(digit):
	if len(label.text) <3:
		label.set_text(label.text + str(digit))
		

func _on_button_1_pressed() -> void:
	key_press(1)


func _on_button_2_pressed() -> void:
	key_press(2)


func _on_button_3_pressed() -> void:
	key_press(3)


func _on_button_4_pressed() -> void:
	key_press(4)


func _on_button_5_pressed() -> void:
	key_press(5)


func _on_button_6_pressed() -> void:
	key_press(6)


func _on_button_7_pressed() -> void:
	key_press(7)


func _on_button_8_pressed() -> void:
	key_press(8)


func _on_button_9_pressed() -> void:
	key_press(9)


func _on_button_c_pressed() -> void:
	label.text = ""


func _on_button_0_pressed() -> void:
	key_press(0)


func _on_button_ok_pressed() -> void:
	if label.text == PASSWORD:
		delete.emit()
		queue_free()
		
	else:
		label.text = ""
