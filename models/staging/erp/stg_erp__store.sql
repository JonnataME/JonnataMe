with
    store as (
        select
            cast(businessentityid as int) as store_id
            , cast(salespersonid as int) as sales_person_id
            , cast(name as varchar) as store_name
        from {{ source('erp', 'store') }}  
    )

select *
from store
