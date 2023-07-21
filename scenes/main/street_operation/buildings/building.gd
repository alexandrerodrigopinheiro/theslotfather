extends Node2D


signal pressed(index)
signal animation_finished()


var _index := 0
var _enabled := false


func _ready() -> void:
	$Button.connect("pressed", _on_pressed)
	$Animations.connect("animation_finished", _on_animation_finished)
	$SlotMachine.connect("animation_finished", _on_slot_machine_animation_finished)
	$Coins.connect("animation_finished", _on_coins_animation_finished)

	$Background.hide()
	$BackgroundShine.hide()
	$SlotMachine.hide()
	$SlotMachineShine.hide()
	$Coins.hide()


func _on_pressed() -> void:
	$Background.hide()
	$BackgroundShine.hide()
	$SlotMachine.hide()
	$SlotMachineShine.hide()
	$Coins.hide()

	$Animations.play("click")

	_enabled = false

	set_disabled(true)

	emit_signal("pressed", _index)


func _on_animation_finished(_anim_name: String) -> void:
	$SlotMachine.show()
	$SlotMachine.play("default")


func _on_slot_machine_animation_finished() -> void:
	$Background.show()
	$SlotMachine.hide()
	$Coins.show()

	$Coins.play("default")


func _on_coins_animation_finished() -> void:
	emit_signal("animation_finished")


func initialize(index: int) -> void:
	_index = index
	_enabled = true


func set_disabled(disabled: bool) -> void:
	$Button.disabled = true if not _enabled else disabled
