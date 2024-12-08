SELECT
    p.country,
    p.no_of_matches_played,
    nvl(w.no_of_matches_won,0) as no_of_matches_won,
    p.no_of_matches_played - nvl(w.no_of_matches_won,0) as no_of_matches_lost
FROM
    (
        SELECT
            COUNT(country) AS no_of_matches_played,
            country
        FROM
            (
                SELECT
                    team_a AS country
                FROM
                    cricket
                UNION ALL
                SELECT
                    team_b
                FROM
                    cricket
            )
        GROUP BY
            country
    )  p
    FULL OUTER JOIN (
        SELECT
            COUNT(winner)     AS no_of_matches_won,
            winner            AS country
        FROM
            cricket
        GROUP BY
            winner
    )  w ON ( w.country = p.country );