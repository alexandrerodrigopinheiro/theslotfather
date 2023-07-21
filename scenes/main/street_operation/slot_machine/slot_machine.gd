extends Node2D


signal animation_finished()


func _ready() -> void:
	$Skin.connect("animation_finished", _on_skin_animation_finished)
	$Coins.connect("animation_finished", _on_coin_animation_finished)

	$Skin.hide()
	$Coins.hide()


func _on_skin_animation_finished() -> void:
	$Coins.play("default")

	$Skin.hide()

	$Coins.show()


func _on_coin_animation_finished() -> void:
	$Coins.hide()

	emit_signal("animation_finished")


func play() -> void:
	$Skin.play("default")
	$Skin.show()
