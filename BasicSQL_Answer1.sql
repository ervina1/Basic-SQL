/** Excercise 1 **/
select Name, Continent
From world.country
limit 5;

/** Excercise 2 **/
select Name, Population
from world.city
limit 5;

/** Excercise 3 **/
select region
from world.country
limit 10;

/** Excercise 4 **/
select count(distinct governmentform) as Sum_Govermentform
from world.country;

/** Excercise 5 **/
select avg(surfacearea) as Avg_Surfacearea
from world.country
where continent like 'Asia';

/** Excercise 6 **/
select name, GNP
from world.country
where GovernmentForm = 'Republic'
limit 5;

/** Excercise 7 **/
select Name, population, code
from world.country
where code like '%a' 
	and LifeExpectancy >69
    and LifeExpectancy <91
order by population desc;
/** Excercise 7 alternative **/
select name,population,code
from country
where code like '%A'
AND lifeexpectancy between 70 AND 90
order by population desc;