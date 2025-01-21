With
    renomeado as (
        select
            cast(CUSTOMERID as int) as CUSTOMER_ID
            , cast(MODIFIEDDATE as datetime) as MODIFIED_DATE
            , cast(PERSONID as int) as PERSON_ID
            , cast(ROWGUID as varchar) as ROW_GUID
            , cast(STOREID as int) as STORE_ID
            , cast(TERRITORYID as int) as TERRITORY_ID


        from {{ source('erp', 'CUSTOMER') }}
    )

select *
from renomeado