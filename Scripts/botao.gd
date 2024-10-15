extends Control
@onready var label = $Label
@export var valor : int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.text = name

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	if Global.resultado:
		Global.exibir = label.text
		Global.resultado = false
		Global.controle = false
	else:
		Global.exibir += label.text
		Global.controle = false
