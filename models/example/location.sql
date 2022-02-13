{{ config(materialized='table') }}

select distinct Location,
Location_level,
Country,
Continent,
Province,
Longitude,
ISLAND,
Latitude
from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_HARI_KRISHNA"