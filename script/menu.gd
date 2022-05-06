extends Control


func _ready():
	pass

func _on_button_comecar_pressed():
	get_tree().change_scene("res://scenes/comecar.tscn")


func _on_button_opcoes_pressed():
	get_tree().change_scene("res://scenes/menu_opcoes.tscn")


func _on_button_ranking_pressed():
	get_tree().change_scene("res://scenes/menu_ranking.tscn")


func _on_button_instrucoes_pressed():
	get_tree().change_scene("res://scenes/menu_instrucoes.tscn")
