extends Node

var processCounter:int = 1
var processTime:float = 0.0
var physicsCounter:int = 1
var physicsTime:float = 0.0

func _process(_delta):
	processTimeCalculation(_delta)
	#ifVsyncIsOffProcess(_delta) # use if VSync is Turned Off
	pass

# warning-ignore:unused_argument
func _physics_process(_delta):
	#physicsTimeCalculation(_delta)
	pass


func processTimeCalculation(_delta:float):
	if processCounter < 1000:
		processTime += _delta
		print("Process Step ", processCounter, ": ", processTime, " (Total Time)")
		processCounter+=1
	

func physicsTimeCalculation(_delta:float):
	if physicsCounter < 1000:
		physicsTime += _delta
		print("Physics Step ", physicsCounter, ": ", physicsTime, " (Total Time)")
		physicsCounter+=1

func ifVsyncIsOffProcess(_delta):
	processTime += _delta
	if(processTime >= 1.0):
		print("Process Step ", processCounter, ": ", processTime, " (Total Time)")
	processCounter+=1
