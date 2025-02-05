with
    sales_reason as (
        select * from {{ ref('stg_erp__sales_reason') }}
    ),
    sales_order_header_sales_reason as (
        select * from {{ ref('stg_erp__sales_order_header_sales_reason') }}
    ),
    sales_order_detail as (
        select * from {{ ref('stg_erp__sales_order_detail') }}
    ),
    final as (
        select
            sales_order_detail.sales_order_detail_id
            , sales_reason.reason_type
            , sales_reason.reason_name
        from sales_reason
        inner join sales_order_header_sales_reason on sales_reason.sales_reason_id = sales_order_header_sales_reason.sales_reason_id
        inner join sales_order_detail on sales_order_header_sales_reason.sales_order_id = sales_order_detail.sales_order_id
    )
select *
from final
