with  
    customer as (
        select * from {{ ref("stg_erp__customer") }}
    ),
    person as (
        select * from {{ ref("stg_erp__person") }}
    ),
    store as (
        select * from {{ ref('stg_erp__store') }}
    ),
    final AS (
        select
            customer.customer_id
            , case
                when customer.person_id is not null then 'person'
                when customer.store_id is not null then 'store'
              end as customer_type
            , COALESCE(person.person_name, store.store_name) as customer_name
        from customer
        left join person on customer.person_id = person.person_id
        left join store on customer.store_id = store.store_id
    )

select *
from final