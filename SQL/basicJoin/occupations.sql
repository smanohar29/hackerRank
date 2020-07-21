--/*
--Enter your query here.
--Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
--*/

select max(Doctor),max(Professor),max(Singer),max(Actor) from
    (
        select
            row_number() over (partition by Doctor, Professor, Singer, Actor order by name) as rownum,
            case when Doctor=1 then name else null end as Doctor,
            case when Professor=1 then name else null end as Professor,
            case when Singer=1 then name else null end as Singer,
            case when Actor=1 then name else null end as Actor
        from occupations
        pivot
            (    count(occupation)
                for occupation
                in (Doctor, Professor, Singer, Actor)
            )p
    )t
group by t.rownum