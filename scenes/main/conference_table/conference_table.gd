extends Node2D


var _timer := Timer.new()


func _ready() -> void:
	add_child(_timer)

	$Whisper.connect("animation_finished", _on_whisper_animation_finished)
	_timer.connect("timeout", _on_timer_timeout)

	_timer.one_shot = true
	_timer.wait_time = 4.392

	$Whisper.play("default")
	$Father.hide()
	$Suitcase.hide()


func _on_whisper_animation_finished() -> void:
	$Father.show()

	$Father.play("default")
	_timer.start()


func _on_timer_timeout() -> void:
	$Suitcase.show()

	$Suitcase.play("default")
