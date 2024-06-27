extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var os = OS.get_name()
	match os:
		"Windows":
			print("Windows")
			disable_and_hide_node(%Controls)
		"macOS":
			print("macOS")
		"Linux", "FreeBSD", "NetBSD", "OpenBSD", "BSD":
			print("Linux/BSD")
		"Android":
			print("Android")
		"iOS":
			print("iOS")
		"Web":
			print("Web")
			
func disable_and_hide_node(node:Node) -> void:
	node.process_mode = Node.PROCESS_MODE_DISABLED
	node.hide()
