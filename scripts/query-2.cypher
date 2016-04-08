// A query that shows you the average percent needed (as per the quota)
// what is need is determined by quota and how many people voted is TotalPoll
// to get the return value you have to divied the quota by the totalPoll on the day


MATCH 
	(n:constituency)
RETURN 
	avg(toFloat(n.Quota)/toFloat(n.TotalPoll))