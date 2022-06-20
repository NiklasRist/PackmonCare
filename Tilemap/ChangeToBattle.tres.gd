extends TileSet
func changeToBattle():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var battleProb = rng.randi_range(1,10)
	if(battleProb<4):
		return true
	else: 
		return false



