extends Control


func _ready():
	pass

func _on_button_voltar_pressed():
	get_tree().change_scene("res://scenes/menu_principal.tscn")


func _on_novojogador_pressed():
	get_tree().change_scene("res://scenes/novojogo.tscn")
