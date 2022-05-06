extends Control

func _ready():
	pass 

	
func _on_TextureButton_pressed():
	get_tree().change_scene("res://scenes/tela_grajau.tscn")
	pass


func _on_button_voltar_pressed():
	get_tree().change_scene("res://scenes/comecar.tscn")
	pass # Replace with function body.
