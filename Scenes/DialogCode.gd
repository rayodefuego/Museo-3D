extends PopupDialog


func set_popup(var name_text:String, var text_text:String):
	var name_label = $NameLabel
	var text_label = $TextLabel
	
	name_label.text = name_text
	text_label.text = text_text

func _ready():
	pass
	
func prueba():
	print("hahaha")
