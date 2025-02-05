with
    country_region as (  
        select  
            cast(countryregioncode as varchar) as country_region_code
            , cast(name as varchar) as country_region_name
        from {{ source('erp', 'countryregion') }}  
    )  

select *  
from country_region
