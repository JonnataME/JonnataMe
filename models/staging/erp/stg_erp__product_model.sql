with
    product_model as (
        select
            cast(productmodelid as int) as product_model_id
            , cast(name as varchar) as product_model_name
        from {{ source('erp', 'productmodel') }}
    )

select *  
from product_model
