extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var SPEED = 2


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	pass
	if Input.is_action_pressed("target_plus_x"):
		translate(Vector3(1*delta*SPEED,0,0))
	if Input.is_action_pressed("target_minus_x"):
		translate(Vector3(-1*delta*SPEED,0,0))
	if Input.is_action_pressed("target_plus_y"):
		translate(Vector3(0,1*delta*SPEED,0))
	if Input.is_action_pressed("target_minus_y"):
		translate(Vector3(0,-1*delta*SPEED,0))
	if Input.is_action_pressed("target_plus_z"):
		translate(Vector3(0,0, 1*delta*SPEED))
	if Input.is_action_pressed("target_minus_z"):
		translate(Vector3(0,0, -1*delta*SPEED))
	get_node("../GUI/Label_target_pos").text=var2str(translation)
	#print(translation)
	
		

