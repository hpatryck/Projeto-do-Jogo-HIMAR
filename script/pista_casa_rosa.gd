extends Control
onready var timer := $Timer as Timer

func _ready():
	timer.start()
	pass 



func _on_Timer_timeout():
	$Sprite/pista.visible_characters=$Sprite/pista.visible_characters+3
	pass # Replace with function body.


func _on_button_sair_pressed():
	#$Sprite/pista.visible_characters = 0
	get_tree().change_scene("res://scenes/tela_grajau.tscn")
	pass # Replace with function body.


func _on_TextureButton_pressed():
	
	get_tree().change_scene("res://scenes/tela_grajau.tscn")
	pass # Replace with function body.


func _on_cazumbar_pressed():
	get_tree().change_scene("res://scenes/chute_grajau.tscn")
	pass # Replace with function body.
