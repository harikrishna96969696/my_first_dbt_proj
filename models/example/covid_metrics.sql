{{ config(materialized='table') }}


select a.location,b.island,b.province,b.country,b.continent,date,sum(total_deaths+new_deaths) as total_death,
sum(total_recovered+new_recovered) as total_recovered,
sum(total_cases +new_cases)   as total_active_cases
,sum(GROWTH_FACTOR_OF_NEW_CASES) as GROWTH_FACTOR_OF_NEW_CASES,
sum(CASE_RECOVERED_RATE) as CASE_RECOVERED_RATE,
sum(CASE_FATALITY_RATE) as CASE_FATALITY_RATE,
sum(population) as total_population
 from covid_stats a left join location  b on a.location = b.location and a.island = b.island
group by a.location,b.island,b.province,b.country,b.continent,date

