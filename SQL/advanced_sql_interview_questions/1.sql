--We want to retrieve the names of all salespeople that have more than 1 order from the tables above. You can assume that each salesperson only has one ID
select s.name
from salesperson s
join orders o on s.id=o.salesperson_id
group by s.id, s.name
having count(1)>1