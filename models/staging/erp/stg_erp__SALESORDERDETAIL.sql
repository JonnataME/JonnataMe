With
    renomeado as (
        select
            cast(CARRIERTRACKINGNUMBER as varchar) as CARRIER_TRACKING_NUMBER
            , cast(MODIFIEDDATE as datetime) as MODIFIED_DATE
            , cast(ORDERQTY as smallint) as ORDER_QTY
            , cast(PRODUCTID as int) as PRODUCT_ID
            , cast(ROWGUID as varchar) as ROW_GUID
            , cast(SALESORDERDETAILID as int) as SALES_ORDER_DETAIL_ID
            , cast(SALESORDERID as int) as SALES_ORDER_ID
            , cast(SPECIALOFFERID as int) as SPECIAL_OFFER_ID
            , cast(UNITPRICE as decimal) as UNIT_PRICE
            , cast(UNITPRICEDISCOUNT as decimal) as UNIT_PRICE_DISCOUNT
        from {{ source('erp', 'SALESORDERDETAIL') }}
    )

select *
from renomeado