extends Control

var names_array = ["Monika", "Pavel", "Petr", "Tomas", "Honza", "Lukas", "Monika", "Pavel", "Petr", "Tomas", "Honza", "Lukas"]
var score_array = [1000, 2000, 5000, 10000, 20000, 30000, 1000, 2000, 5000, 10000, 20000, 30000]

var subLabel = load("res://SubLabel.tscn")

func _ready():
	var positionsContainer = $VBoxContainer/HighscoreScroll/HBoxContainer/Positions
	var namesContainer = $VBoxContainer/HighscoreScroll/HBoxContainer/Names
	var scoresContainer = $VBoxContainer/HighscoreScroll/HBoxContainer/Scores
	
	for i in names_array.size():
		var position = subLabel.instance()
		position.text = str(i+1)
		
		var label = subLabel.instance()
		label.text = names_array[i]
		
		var score = subLabel.instance()
		score.text = str(score_array[i])
		
		
		positionsContainer.add_child(position) 
		namesContainer.add_child(label) 
		scoresContainer.add_child(score) 
		
	

