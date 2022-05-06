extends Control
onready var zoom1 := $button_igreja/camera/tween as Tween
onready var zoom2 := $button_casa_rosa/camera/tween as Tween
onready var zoom3 := $button_casa_branca/camera/tween as Tween
onready var time1 := $button_igreja/Timer as Timer
onready var time2 := $button_casa_rosa/Timer as Timer
onready var time3 := $button_casa_branca/Timer as Timer

func _ready():
	
	pass 
	
func _on_button_igreja_pressed():
	
	$button_igreja/camera.current= true
	zoom1.interpolate_property($button_igreja/camera, "zoom", Vector2(0.55,0.55), Vector2(0.25,0.25),1, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	zoom1.start()
	time1.start()
	
	#time.set_wait_time(1)
	#timer.start()
	#get_tree().change_scene("res://scenes/pista_igreja.tscn")
	
func _on_button_casa_rosa_pressed():
	$button_casa_rosa/camera.current= true
	zoom1.interpolate_property($button_casa_rosa/camera, "zoom", Vector2(0.55,0.55), Vector2(0.25,0.25),1, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	zoom1.start()
	time2.start()
	
func _on_button_casa_branca_pressed():
	$button_casa_branca/camera.current= true
	zoom3.interpolate_property($button_casa_branca/camera, "zoom", Vector2(0.55,0.55), Vector2(0.25,0.25),1, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	zoom3.start()
	time3.start()

func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/pista_igreja.tscn")
	pass 

func timeout_casa_branca():
	get_tree().change_scene("res://scenes/pista_casa_branca.tscn")
	pass


func timeout_casa_rosa():
	get_tree().change_scene("res://scenes/pista_casa_rosa.tscn")
	pass 


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/chute_grajau.tscn")


func _on_TextureButton_pressed():
	get_tree().change_scene("res://scenes/menu_principal.tscn")
	pass # Replace with function body.


func _on_cazumbar_pressed():
	get_tree().change_scene("res://scenes/chute_grajau.tscn")
	pass # Replace with function body.
