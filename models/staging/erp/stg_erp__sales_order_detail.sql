with
    sales_order_detail as (
        select  
            cast(salesorderdetailid as int) as sales_order_detail_id
            , cast(salesorderid as int) as sales_order_id
            , cast(productid as int) as product_id
            , cast(orderqty as smallint) as order_qty
            , cast(unitprice as decimal(20,2)) as unit_price
            , cast(unitpricediscount as decimal(20,2)) as unit_price_discount
        from {{ source('erp', 'salesorderdetail') }}
    )  

select *
from sales_order_detail
