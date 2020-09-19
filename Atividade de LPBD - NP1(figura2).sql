-- A)
select ct.Name, ct.Continent from country ct;

-- B)
select ct.Name, ct.Region, ct.Population, ct.Continent from country ct order by 
ct.Continent = "Europa";

-- C)
select ct.LifeExpectancy, ct.Continent from country ct order by
ct.Continent = "Asia";

-- D)
create view vw_Country as 
select ct.Name, ct.HeadOfState, ct.GovernmentForm, ct.Population from country ct
order by ct.Continent = "South America" and
ct.Population = "2000000";
select * from vw_country;

-- E) 
create view vw_Country2 as
select ct.name, ct.SurfaceArea, cl.Language, cl.IsOfficial from country ct, countrylanguage cl where
ct.Code = cl.CountryCode and
cl.Language = "English" and
cl.IsOfficial = "T"
order by ct.SurfaceArea asc;
select * from vw_country2;

-- F)
alter view vw_Country2 as
select ct.name, ct.SurfaceArea, cl.Language, cl.Percentage from country ct, countrylanguage cl where
ct.Code = cl.CountryCode and
cl.Language = "English" and
cl.IsOfficial = "T"
order by ct.SurfaceArea asc;