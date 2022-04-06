extends Area

#class_name Painting

export(String) var painting_name : String
export(String) var painting_author : String
export(String) var painting_text : String

var format_text = "My name is: %s. I'm created by %s. I say: %s"
onready var actual_text = format_text % [painting_name, painting_author, painting_text]

func _ready():
	print(actual_text)
