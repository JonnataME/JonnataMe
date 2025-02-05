with
    product_category as (
        select
            cast(productcategoryid as int) as product_category_id
            , cast(name as varchar) as product_category_name
        from {{ source('erp', 'productcategory') }}
    )

select *  
from product_category
