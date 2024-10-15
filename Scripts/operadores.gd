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
	match label.text:
		"+":
			Global.exibir += valor
		"-":
			Global.exibir += valor
		"x":
			Global.exibir += valor
		"÷":
			Global.exibir += valor
		"C":
			Global.exibir = ""
		"=":
			expression.parse(Global.exibir)
			var result = expression.execute()
			Global.exibir += valor + str(result)
			var resultado = true
