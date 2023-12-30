extends Node

var music = true
var sfx = true
var selectedLevel = 0
var tutorial = true
var level1ez = true
var level2ez = false
var level3ez = false
var level4ez = false
var level5ez = false

var save_path = "user://savedata.save"

func save():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(music)
	file.store_var(sfx)
	file.store_var(tutorial)
	file.store_var(level1ez)
	file.store_var(level2ez)
	file.store_var(level3ez)
	file.store_var(level4ez)
	file.store_var(level5ez)
	#file.store_var()
	
	
func load():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		music = file.get_var(music)
		sfx = file.get_var(sfx)
		#selectedLevel = file.get_var(selectedLevel)
		tutorial = file.get_var(tutorial)
		level1ez = file.get_var(level1ez)
		level2ez = file.get_var(level2ez)
		level3ez = file.get_var(level3ez)
		level4ez = file.get_var(level4ez)
		level5ez = file.get_var(level5ez)
	else:
		music = true
		sfx = true
		tutorial = true
		level1ez = true
		level2ez = false
		level3ez = false
		level4ez = false
		level5ez = false
