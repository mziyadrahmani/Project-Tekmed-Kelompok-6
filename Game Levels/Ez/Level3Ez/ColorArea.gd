extends Control


@onready var areaArray = [false,false,false,false]
@onready var clr = get_parent().get_node("BucketsGroup")

func _ready():
	update_status()

func checkWinCondition():
	update_status()
	if areaArray.all(func(kondisi): return kondisi == true):
		print ("WIN")
		$"../Transition".play()
		await get_tree().create_timer(0.5).timeout
		$"../Win".visible = true
		$"../WinSfx".play()
		#Global.level4ez = true
		#Global.save()
		
		
func update_status():
	var correct_count = areaArray.count(true)
	$Status.text = str(correct_count) + " / " + str(areaArray.size())
		
		

func _on_a_1_pressed():
	var color = get_parent().SelectedColor
	##print(color)
	$a1.modulate = color
	##print($a1.modulate)
	if $a1.modulate == clr.get_node("Button7").modulate :
		print("Correct color")
		areaArray[0] = true
		checkWinCondition()
		


func _on_a_2_pressed():
	var color = get_parent().SelectedColor
	##print(color)
	$a2.modulate = color
	if $a2.modulate == clr.get_node("Button").modulate :
		#print("Correct color")
		areaArray[1] = true
		checkWinCondition()


func _on_a_3_pressed():
	var color = get_parent().SelectedColor
	#print(color)
	$a3.modulate = color
	if $a3.modulate == clr.get_node("Button6").modulate :
		#print("Correct color")
		areaArray[2] = true
		checkWinCondition()


func _on_a_4_pressed():
	var color = get_parent().SelectedColor
	#print(color)
	$a4.modulate = color
	if $a4.modulate == clr.get_node("Button7").modulate :
		#print("Correct color")
		areaArray[3] = true
		checkWinCondition()




