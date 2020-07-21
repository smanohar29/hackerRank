select h.hacker_id, h.name                                                    
from submissions s 
join hackers h on s.hacker_id = h.hacker_id 
join challenges ch on s.challenge_id = ch.challenge_id 
join difficulty di on di.difficulty_level = ch.difficulty_level
where s.score = di.score
group by h.hacker_id, h.name
having count(1) > 1  
order by count(1) desc, h.hacker_id