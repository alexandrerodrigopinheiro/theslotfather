extends Node2D

signal dialog_closed()

func _ready() -> void:
	$Button.connect("button_up", _on_button_up)


func _on_button_up() -> void:
	hide()
	emit_signal("dialog_closed")


func set_disabled(disabled: bool) -> void:
	$Button.disabled = disabled
