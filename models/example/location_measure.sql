{{ config(materialized='table') }}

select distinct Location,
Province,
ISLAND,
Location_ISO_Code,
AREA_KM_2_,
TOTAL_RURAL_VILLAGES
,TOTAL_REGENCIES
,POPULATION_DENSITY
,POPULATION
,TOTAL_CITIES
,TOTAL_DISTRICTS
,TOTAL_URBAN_VILLAGES
from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_HARI_KRISHNA"