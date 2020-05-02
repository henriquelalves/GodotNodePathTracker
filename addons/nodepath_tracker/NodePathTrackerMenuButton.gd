tool
extends Button

onready var tween = Tween.new()

func _ready():
	add_child(tween)

func _reset_all():
	tween.remove_all()
	$NodePathsOK.modulate.a = 0.0
	$NodePathsError.modulate.a = 0.0

func show_ok():
	_reset_all()
	tween.interpolate_property($NodePathsOK, "modulate:a", 0.0, 1.0, 0.2,Tween.TRANS_LINEAR,Tween.EASE_IN)
	tween.interpolate_property($NodePathsOK, "modulate:a", 1.0, 0.0, 0.2,Tween.TRANS_LINEAR,Tween.EASE_IN, 2.0)
	tween.start()

func show_error():
	_reset_all()
	tween.interpolate_property($NodePathsError, "modulate:a", 0.0, 1.0, 0.2,Tween.TRANS_LINEAR,Tween.EASE_IN)
	tween.interpolate_property($NodePathsError, "modulate:a", 1.0, 0.0, 0.2,Tween.TRANS_LINEAR,Tween.EASE_IN, 2.0)
	tween.start()
