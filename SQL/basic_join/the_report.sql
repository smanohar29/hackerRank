--no grade less thab 8
--desc ord of grades, asc ord of name
-- Less than 8
--grade < 8 --> null as name and desc order of grade
-- asc order of marks

select name, grade, marks
from students st
join grades gr on st.marks between gr.min_mark and gr.max_mark
where grade >= 8
order by grade desc, name;


select  case when gr.grade <8 then NULL else name end as name,
        gr.grade,
        st.marks
from students st
join grades gr on st.marks between gr.min_mark and gr.max_mark
where grade < 8
order by grade desc, marks