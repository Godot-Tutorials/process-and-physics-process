extends Node

var processCounter:int = 1
var processTime:float = 0.0
var physicsCounter:int = 1
var physicsTime:float = 0.0

func _process(delta):
	processTimeCalculation(delta)
	pass

func _physics_process(delta):
	#physicsTimeCalculation(delta)
	pass


func processTimeCalculation(delta:float):
	if processCounter < 1000:
		processTime += delta
		print("Process Step ", processCounter, ": ", processTime, " (Total Time)")
		processCounter+=1

func physicsTimeCalculation(delta:float):
	if physicsCounter < 1000:
		physicsTime += delta
		print("Physics Step ", physicsCounter, ": ", physicsTime, " (Total Time)")
		physicsCounter+=1
