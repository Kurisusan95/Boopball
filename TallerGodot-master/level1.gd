
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Initialization here
	set_fixed_process(true)
	pass
	
func _fixed_process(delta):
	var draw_init = Input.is_action_pressed("draw_init")
	
	if(draw_init):
		print(self.get_viewport().get_mouse_pos())
		var colorUno = Color(200, 51, 71) 
		var pos_in = self.get_viewport().get_mouse_pos()
		var pos_to = Vector2(pos_in.x + 30, pos_in.y)
		get_node("canvasLine").draw_line(pos_in, pos_to, colorUno, 10)


