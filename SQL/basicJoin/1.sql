--Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student.
--Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id.
--If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

select h.hacker_id, h.name, count(challenge_id) as challenges_created
into #test
from hackers h
join challenges c on h.hacker_id=c.hacker_id
group by h.hacker_id, h.name
order by count(challenge_id) desc;


declare @n as int;
select @n = max(challenges_created) from #test;

select hacker_id, name, challenges_created
from
    (
        select top 1000 t.*,
            x.occurences,
            case
                when x.occurences>1 and t.challenges_created=@n then 0
                when x.occurences=1 then 0
                else 1
            end as remove

        from #test t
        join (
                select top 1000 challenges_created, count(1) as occurences
                from #test
                group by challenges_created
                order by challenges_created desc
              ) x
        on t.challenges_created = x.challenges_created
        order by t.challenges_created desc
    )temp
where remove=0
order by challenges_created desc, hacker_id