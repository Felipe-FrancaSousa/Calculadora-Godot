extends Control
@onready var label = $Label
@export var valor : String
var expression = Expression.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.text = name

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	if label.text == "C":
		Global.exibir = ""

	if !Global.controle:
		match label.text:
			"+":
				Global.exibir += valor
				Global.controle = true
			"-":
				Global.exibir += valor
				Global.controle = true
			"x":
				Global.exibir += valor
				Global.controle = true
			"÷":
				Global.exibir += valor
				Global.controle = true
			",":
				Global.exibir += valor
				Global.controle = true
			"=":
				if !Global.controle or Global.exibir == "":
					expression.parse(Global.exibir)
					var result = expression.execute()
					if result != null:
						Global.exibir += valor + str(result)
						Global.resultado = true
						Global.controle = true
					else:
						Global.exibir += valor + "Erro!"
						Global.resultado = true
						Global.controle = true
	else:
		print("Erro!")
