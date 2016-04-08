//This query gives you the shortest path between two nodes
// In this i am getting the shortes path between Finna Fail leader Michéal Martin
// and Fine Gael leader Enda Kenny
// and i am limiting it to 5 nodes max


MATCH 
	(martin:Candidate { Name:"Michéal Martin" }),(Enda:Candidate { Name:"Enda Kenny" }),
	p = shortestPath((martin)-[*..5]-(Enda))
RETURN 
	p;