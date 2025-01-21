With
    renomeado as (
        select
            cast(ACCOUNTNUMBER as varchar) as ACCOUNT_NUMBER
            , cast(BILLTOADDRESSID as int) as BILL_TO_ADDRESS_ID
            , cast(COMMENT as varchar) as COMMENT
            , cast(CREDITCARDAPPROVALCODE as varchar) as CREDIT_CARD_APPROVAL_CODE
            , cast(CREDITCARDID as int) as CREDIT_CARD_ID
            , cast(CURRENCYRATEID as int) as CURRENCY_RATE_ID
            , cast(CUSTOMERID as int) as CUSTOMER_ID
            , cast(DUEDATE as datetime) as DUE_DATE
            , cast(FREIGHT as decimal) as FREIGHT
            , cast(MODIFIEDDATE as datetime) as MODIFIED_DATE
            , cast(ONLINEORDERFLAG as int) as ONLINE_ORDER_FLAG
            , cast(ORDERDATE as datetime) as ORDER_DATE
            , cast(PURCHASEORDERNUMBER as varchar) as PURCHASE_ORDER_NUMBER
            , cast(REVISIONNUMBER as int) as REVISION_NUMBER
            , cast(ROWGUID as varchar) as ROW_GUID
            , cast(SALESORDERID as int) as SALES_ORDER_ID
            , cast(SALESPERSONID as int) as SALES_PERSON_ID
            , cast(SHIPDATE as datetime) as SHIP_DATE
            , cast(SHIPMETHODID as int) as SHIP_METHOD_ID
            , cast(SHIPTOADDRESSID as int) as SHIP_TO_ADDRESS_ID
            , cast(STATUS as int) as STATUS
            , cast(SUBTOTAL as varchar) as SUBTOTAL
            , cast(TAXAMT as varchar) as TAXA_MT
            , cast(TERRITORYID as int) as TERRITORY_ID
            , cast(TOTALDUE as varchar) as TOTAL_DUE


        from {{ source('erp', 'SALESORDERHEADER') }}
    )

select *
from renomeado
