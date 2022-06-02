extends Sprite

func _ready():
	pass # Replace with function body.


func _on_Cazumbar_pressed():
	get_tree().change_scene("res://Cenas/Cazumbar.tscn")

func _on_Voltar_pressed():
	get_tree().change_scene("res://Cenas/Grajau0.tscn")
