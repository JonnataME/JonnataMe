With
    renomeado as (
        select
            cast(BONUS as varchar) as BONUS
            , cast(BUSINESSENTITYID as int) as BUSINESS_ENTITY_ID
            , cast(COMMISSIONPCT as varchar) as COMMISSION_PCT
            , cast(MODIFIEDDATE as datetime) as MODIFIED_DATE
            , cast(ROWGUID as varchar) as ROW_GUID
            , cast(SALESLASTYEAR as varchar) as SALES_LAST_YEAR
            , cast(SALESQUOTA as varchar) as SALES_QUOTA
            , cast(SALESYTD as varchar) as SALES_YTD
            , cast(TERRITORYID as int) as TERRITORY_ID


        from {{ source('erp', 'SALESPERSON') }}
    )
    
select *
from renomeado