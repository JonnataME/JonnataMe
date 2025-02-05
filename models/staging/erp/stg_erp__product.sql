with
    product as (
        select
            cast(productid as int) as product_id
            , cast(productmodelid as int) as product_model_id
            , cast(productsubcategoryid as int) as product_subcategory_id
            , cast(class as varchar) as product_class
            , cast(name as varchar) as product_name
            , cast(productline as varchar) as product_line
        from {{ source('erp', 'product') }}
    )

select *  
from product
