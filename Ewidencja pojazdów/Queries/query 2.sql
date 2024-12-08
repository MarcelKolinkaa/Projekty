SELECT
    i.date_of_a_incident,
    i.type_of_a_incident,
   nvl(i.description_of_a_incident,'no description') as description_of_a_incident ,
    i.type_of_law_enforcement,
    SUBSTR(TO_CHAR(i.badge_number_of_a_police_officer_who_came_to_the_incident),3) as badge_number
    
FROM
         dm_incident i
    full JOIN dm_law_enforcement_service l ON l.type_of_law_enforcement = i.type_of_law_enforcement
WHERE
    date_of_a_incident BETWEEN '01.01.2019' AND '31.12.2019'
    AND UPPER(i.type_of_law_enforcement) LIKE '%POLICE%'  ; 

    

