extends Node2D


func _ready() -> void:
	$BuildingClub.connect("pressed", _on_pressed)
	$BuildingCigars.connect("pressed", _on_pressed)
	$BuildingRestaurant.connect("pressed", _on_pressed)
	$BuildingLiquorMart.connect("pressed", _on_pressed)
	$BuildingCasino.connect("pressed", _on_pressed)
	$BuildingBar.connect("pressed", _on_pressed)

	$BuildingClub.connect("animation_finished", _on_animation_finished)
	$BuildingCigars.connect("animation_finished", _on_animation_finished)
	$BuildingRestaurant.connect("animation_finished", _on_animation_finished)
	$BuildingLiquorMart.connect("animation_finished", _on_animation_finished)
	$BuildingCasino.connect("animation_finished", _on_animation_finished)
	$BuildingBar.connect("animation_finished", _on_animation_finished)

	$Dialog.connect("dialog_closed", _on_dialog_closed)

	$GlowTrail.hide()
	$Arrows.hide()

	$BuildingClub.initialize(1)
	$BuildingCigars.initialize(2)
	$BuildingRestaurant.initialize(3)
	$BuildingLiquorMart.initialize(4)
	$BuildingCasino.initialize(5)
	$BuildingBar.initialize(6)

	_prepere()


func _on_pressed(index: int) -> void:
	$BuildingClub.set_disabled(true)
	$BuildingCigars.set_disabled(true)
	$BuildingRestaurant.set_disabled(true)
	$BuildingLiquorMart.set_disabled(true)
	$BuildingCasino.set_disabled(true)
	$BuildingBar.set_disabled(true)

	$Arrows.set_enabled(index)
	$GlowTrail.set_enabled(index)

	$GlowTrail.hide()
	$Arrows.hide()


func _on_animation_finished() -> void:
	$BuildingClub.set_disabled(false)
	$BuildingCigars.set_disabled(false)
	$BuildingRestaurant.set_disabled(false)
	$BuildingLiquorMart.set_disabled(false)
	$BuildingCasino.set_disabled(false)
	$BuildingBar.set_disabled(false)
	$Dialog.set_disabled(false)

	$GlowTrail.show()
	$Arrows.show()


func _on_dialog_closed() -> void:
	$BuildingClub.set_disabled(false)
	$BuildingCigars.set_disabled(false)
	$BuildingRestaurant.set_disabled(false)
	$BuildingLiquorMart.set_disabled(false)
	$BuildingCasino.set_disabled(false)
	$BuildingBar.set_disabled(false)
	$Dialog.set_disabled(true)

	$Arrows.initialize()
	$GlowTrail.initialize()

	$GlowTrail.show()
	$Arrows.show()


func _prepere() -> void:
	$BuildingClub.set_disabled(true)
	$BuildingCigars.set_disabled(true)
	$BuildingRestaurant.set_disabled(true)
	$BuildingLiquorMart.set_disabled(true)
	$BuildingCasino.set_disabled(true)
	$BuildingBar.set_disabled(true)
	$Dialog.set_disabled(false)

