MATCH (a:Candidate),(b:constituency)
WHERE a.Won = b.ShortTag
CREATE (a)-[r:WON_A_SEAT]->(b)
RETURN r