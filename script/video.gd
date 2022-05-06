extends Control

onready var timer := $Timer as Timer

func _ready():
	timer.start()
	
	


func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/menu_principal.tscn")
