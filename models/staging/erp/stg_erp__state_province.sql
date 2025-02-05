with
    state_province as (
        select
            cast(stateprovinceid as int) as state_province_id
            , cast(territoryid as int) as territory_id
            , cast(countryregioncode as varchar) as country_region_code
            , cast(stateprovincecode as varchar) as state_province_code
            , cast(name as varchar) as state_province_name
        from {{ source('erp', 'stateprovince') }}
    )

select *
from state_province
