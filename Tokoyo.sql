--=======================================================================
------checking to make sure my dataset are properly exported
--=======================================================================

SELECT *
FROM Tokoyo_2021..Details$
;


--=======================================================================
--Displaying the list of Athletes from spain
--=======================================================================

SELECT Name,country,discipline
From Tokoyo_2021..Details$
where Country like 'Spain'
ORDER BY  1,2
;

--=======================================================================
--Displaying the list of all the Basketball Athletes in the Tokyo 2021
--=======================================================================

SELECT Name,country,discipline
From Tokoyo_2021..Details$
where Discipline like 'Basketball'
Group by Name,Country,Discipline
ORDER BY  1,2
;

--===============================================================================
--Displaying the list of all the Basketball Athletes from Spain in the Tokyo 2021
--===============================================================================

SELECT Name,country,discipline
From Tokoyo_2021..Details$
where Country = 'Spain' And Discipline = 'basketball'
order by 1,2
;

--================================================================================
--Displaying Total Number of  Handball Athletes in the Tokyo 2021 per country
--=================================================================================

SELECT  Country, COUNT(Discipline) as number_of_Athletes
from Tokoyo_2021..Details$
where  Discipline ='handball'
GROUP BY Country, Discipline
order by 1,2
;


--=======================================================================
--Total Numbers Of Atheletes Per Country Partaking in the Tokoyo 2021
--=======================================================================

SELECT  Country,  count(Discipline) as Number_of_athletes
FROM Tokoyo_2021..Details$
GROUP BY Country
HAVING COUNT(Discipline) >1
order by Number_of_athletes desc
;


--=======================================================================
--Top 20 countries with the higest number of atheletes
--=======================================================================

SELECT  Country,  count(Discipline) as Number_of_athletes
FROM Tokoyo_2021..Details$
Group by country 
Having count(Discipline) >= 155
order by Number_of_athletes desc
;



--=======================================================================
--Number of athletes by sport
--=======================================================================

SELECT discipline, count(discipline) as Number_of_Athletes_by_sport
FROM Tokoyo_2021..Details$
Group by Discipline
ORDER By Number_of_Athletes_by_sport desc
;
