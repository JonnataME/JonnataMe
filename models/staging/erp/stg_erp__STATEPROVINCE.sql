With
    renomeado as (
        select
            cast(COUNTRYREGIONCODE as varchar) as COUNTRY_REGION_CODE
            , cast(ISONLYSTATEPROVINCEFLAG as varchar) as IS_ONLY_STATE_PROVINCE_FLAG
            , cast(MODIFIEDDATE as datetime) as MODIFIED_DATE
            , cast(NAME as varchar) as NAME
            , cast(ROWGUID as varchar) as ROW_GUID
            , cast(STATEPROVINCECODE as varchar) as STATE_PROVINCE_CODE
            , cast(STATEPROVINCEID as int) as STATE_PROVINCE_ID
            , cast(TERRITORYID as int) as TERRITORY_ID
        from {{ source('erp', 'STATEPROVINCE') }}
    )
    
select *
from renomeado