//A query to find all the candidates who won a seat in the same constituency as Enda Kenny
// where there arent part he same party 
//it is order by the candidates name descending

	
MATCH 
	(Enda:Candidate { Name: "Enda Kenny" })-[:WON_A_SEAT*1..5]-(candidates_OF_candidate:Candidate)
WHERE 
	NOT Enda.Party=candidates_OF_candidate.Party
RETURN 
	candidates_OF_candidate.Name
	ORDER BY candidates_OF_candidate.Name DESC;