# Irish Constituencies Neo4j Database
###### Student Manus Duggan, G00308303

## Introduction
Give a summary here of what your project is about.
This is a project done for Graph Theory in Gmit.
I created the database using cypher query language in NEO4J.
It represents the 2016 election in Ireland.
As you can see there is different branches for each Provience and dublin has its own cause there is so many.
The overall result of this is it shows you who is part of what constituency and who is part of what party.

## Database
Explain how you created your database, and how information is represented in it.
I created the database using cypher query language in NEO4J.
To recreate the database run Candidates.cypher,create-constituencies.cypher
create-Parties.cypher,Create-Constituencies-Relationships.cypher
Create-Parties-Relationships.cypher in this exact order.

###Data break down 

####Candidate
| Candidate   | 				                                                                                      |
|--------|:---------------------------------------------------------------------------------------------------------------------------|
| Name   | This is the name of the candidate                                                                                          |
| Votes  | This is the amount of votes that a candidate got on the first round.                                                       |
| Gender | This is the sex of the candidate                                                                                           |
| Party  | This is the party that the candidate belongs to,used for creating relationships to PARTY.                                  |
| Won    | Only the candidates that got a seat will have this, it is a tag for easily creating the relationships to the constituency. |
####constituency
| constituency |                                                                                                                |
|--------------|----------------------------------------------------------------------------------------------------------------|
| name         | The name of the constituency.                                                                                  |
| Electorate   | The amount of people eligable to vote.                                                                         |
| Seats        | The amount of seat allocated to the constituency.                                                              |
| TotalPoll    | The amount of people that voted.                                                                               |
| Turnout      | The amount represented as a percentage of people who were able to vote that did.                               |
| ValidPoll    | The amount of voted that were counted towards the count.                                                       |
| SpoiledVotes | The amount of votes that couldnt be used due to it being invaild.                                              |
| Quota        | The amount that was need to be elected, special cases can occurr in that a candidate may not need that amount. |
| ShortTag     | This is a tag used to for creating relationships to Candidates.                                                |

####PARTY
| PARTY           |                                                                 |
|-----------------|-----------------------------------------------------------------|
| name            | The name of the party.                                          |
| Leader          | The name of the party leader.                                   |
| translation     | The translated name from Irish.                                 |
| Founded         | The year it was founded.                                        |
| InauguralLeader | The Leader who started the party.                               |
| Ideology        | The system of ideas and ideals.                                 |
| Position        | The position the party takes. eg. left wing.                    |
| IO              | The International organisation.                                 |
| EPGROUP         | The european group.                                             |
| party           | This is a tag used to for creating relationships to Candidates. |

 
## Queries
The queries are based on on the candidates and their relationships to other nodes 

#### Winners For other parties
A query to find all the candidates who won a seat in the same constituency as Enda Kenny  where there arent part he same party it is order by the candidates name descending
```cypher
MATCH 
	(Enda:Candidate { Name: "Enda Kenny" })-[:WON_A_SEAT*1..5]-(candidates_OF_candidate:Candidate)
WHERE 
	NOT Enda.Party=candidates_OF_candidate.Party
RETURN 
	candidates_OF_candidate.Name
ORDER BY 
	candidates_OF_candidate.Name DESC;
```

#### Average Quoata percentage needed
A query that shows you the average percent needed (as per the quota) . What is need is determined by quota and how many people voted is TotalPoll to get the return value you have to divied the quota by the totalPoll on the day
```cypher
MATCH 
	(n:constituency)
RETURN 
	avg(toFloat(n.Quota)/toFloat(n.TotalPoll))
```

####Shortest Path
This query gives you the shortest path between two nodes. In this i am getting the shortes path between Finna Fail leader Michéal Martin and Fine Gael leader Enda Kenny and i am limiting it to 5 nodes max
```cypher
MATCH 
	(martin:Candidate { Name:"Michéal Martin" }),(Enda:Candidate { Name:"Enda Kenny" }),
	p = shortestPath((martin)-[*..5]-(Enda))
RETURN 
	p;
```


####I couldnt resist
This returns all the corrupt Candidates
```cypher
MATCH 
	(n:Candidate)
RETURN 
	n;
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. http://elections.independent.ie/election-2016
