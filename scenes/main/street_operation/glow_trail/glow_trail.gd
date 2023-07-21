extends Node2D


var _timer := Timer.new()
var _glows: Array = []


func _ready() -> void:
	add_child(_timer)

	_timer.wait_time = 3
	_timer.one_shot = false

	_timer.connect("timeout", _on_timer_timeout)
	_timer.start()

	for i in get_child_count():
		if has_node("Glow%d"%(i+1)):
			_glows.append(get_node("Glow%d"%(i+1)))

	initialize()


func _on_timer_timeout() -> void:
	$Animations.play("blink")


func initialize() -> void:
	for i in _glows.size():
		_glows[i].show()


func set_enabled(index: int) -> void:
	for i in _glows.size():
		if index == i+1:
			prints(index, i+1)
			_glows[i].hide()
		else:
			_glows[i].show()

