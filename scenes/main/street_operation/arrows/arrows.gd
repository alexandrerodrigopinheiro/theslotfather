extends Node2D


var _arrows: Array = []


func _ready() -> void:
	for i in get_child_count():
		if has_node("Array%d"%(i+1)):
			_arrows.append(get_node("Array%d"%(i+1)))
	initialize()


func initialize() -> void:
	for i in _arrows.size():
		_arrows[i].show()


func set_enabled(index: int) -> void:
	for i in _arrows.size():
		if index == i+1:
			_arrows[i].hide()
		else:
			_arrows[i].show()
