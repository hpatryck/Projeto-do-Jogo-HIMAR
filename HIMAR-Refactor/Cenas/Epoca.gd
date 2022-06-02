extends Sprite

func _ready():
	$Label.modulate = Color(0, 0, 0, 1)
	$Label2.modulate = Color(0, 0, 0, 1)
	$Label3.modulate = Color(0, 0, 0, 1)
	$Label.text = "Cazumbar"
	$Label2.text = "Voltar"
	var file = File.new()
	file.open("res://Player.txt", File.READ)
	$Label3.text = "Estamos em " + file.get_as_text().split(":")[1].split(";")[0]


func _on_Dica1_pressed():
	pass # Replace with function body.


func _on_Dica2_pressed():
	pass # Replace with function body.


func _on_Dica3_pressed():
	pass # Replace with function body.


func _on_Cazumbar_pressed():
	get_tree().change_scene("res://Cenas/Cazumbar.tscn")


func _on_Voltar_pressed():
	pass
