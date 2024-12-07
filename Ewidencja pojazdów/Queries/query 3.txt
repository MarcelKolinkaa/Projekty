Select substr(c.name,0,1) ||lower(substr(c.last_name,0,3)) || '_' || c.birth_date , d.a as year_of_obtaining_the_authorization  from dm_drivers d
left join dm_citizens c on d.pesel=c.pesel 
where A is not null