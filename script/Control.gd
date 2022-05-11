extends Control


func _ready():
	var txt = get_not_text()
	var text = txt.split(".", false)
	var players = []
	var sortplayers = []
	for i in text:
		players = (i.split(",", false))
		if(len(sortplayers) > 0):
			var ver = false
			for j in range(len(sortplayers)):
				if int(sortplayers[j][1]) < int(players[1]):
					sortplayers.insert(j, players)
					ver = true
					break
			if(!ver):
				sortplayers.insert(len(sortplayers), players)
		else:
			sortplayers.append(players)
	print(sortplayers)


func get_not_text():
	var file = File.new()
	file.open("res://SaveGame.txt", File.READ)
	var content = file.get_as_text()
	file.close()
	return content

func _on_button_voltar_pressed():
	get_tree().change_scene("res://scenes/menu_principal.tscn")
