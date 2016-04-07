MATCH (a:Candidate),(b:PARTY)
WHERE a.Party = b.party
CREATE (a)-[r:PART_OF]->(b)
RETURN r