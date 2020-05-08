extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var target 

# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	target = get_node("../Target")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	pass
	get_node("../GUI/Label_cannon_pos").text=var2str(translation)+" rot: "+ var2str(rotation_degrees)
	var offset = translation - target.translation
	look_at_from_position(translation, target.translation, Vector3.FORWARD)
	#rotate_object_local(Vector3.FORWARD, deg2rad(0))	
