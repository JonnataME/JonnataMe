With
    renomeado as (
        select
            cast(COUNTRYREGIONCODE as varchar) as COUNTRY_REGION_CODE
            , cast(MODIFIEDDATE as datetime) as MODIFIED_DATE
            , cast(NAME as varchar) as NAME


        from {{ source('erp', 'COUNTRYREGION') }}
    )

select *
from renomeado