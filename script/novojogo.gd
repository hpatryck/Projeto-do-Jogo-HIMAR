extends Control

const player = [-1]

func _ready():
	pass

	
func _on_TextureButton_pressed():
	var txt = $Sprite/TextEdit1.get_text()
	var text = get_not_text()
	var note = text.split(".", false)
	var players = []
	for i in range(len(note)):
		players.append(note[i].split(",", false))
		if players[i][0] == txt:
			player[0] = i
			print(player)
	if player[0] == -1:
		players.append([txt, 0])
		player[0] = len(players)
		text += ("%s," % players[-1][0]) + ("%s." % players[-1][1])
		save(text)
	get_tree().change_scene("res://scenes/tela_grajau.tscn")
	
	#save(txt)
	#print(txt.split("."))

func save(content):
	var file = File.new()
	file.open("res://SaveGame.txt", File.WRITE)
	file.store_string(content)
	file.close()

func get_not_text():
	var file = File.new()
	file.open("res://SaveGame.txt", File.READ)
	var content = file.get_as_text()
	file.close()
	return content

func _on_button_voltar_pressed():
	get_tree().change_scene("res://scenes/comecar.tscn")
	pass # Replace with function body.

export var jogador = player
