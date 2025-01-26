with
    /* CHAMADA DOS MODELOS NECESSARIOS. */
    CUSTOMER as (select * from {{ ref("stg_erp__CUSTOMER") }}),
    enrich_product as (
        select
            CUSTOMER.CUSTOMER_ID,
            CUSTOMER.MODIFIED_DATE,
            CUSTOMER.PERSON_ID,
            CUSTOMER.ROW_GUID,
            CUSTOMER.STORE_ID,
            CUSTOMER.TERRITORY_ID,

        from CUSTOMER
    )

select *
from enrich_product
