--Enter your query here.
--Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.

select name + '(' + substring(occupation, 1, 1) + ')'
from Occupations
order by name

select 'There are a total of ', count(1), lower(occupation) + 's.'
from occupations
group by occupation
order by count(1)

