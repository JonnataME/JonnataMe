With
    renomeado as (
        select
            cast(CARDNUMBER as varchar) as CARD_NUMBER
            , cast(CARDTYPE as varchar) as CARD_TYPE
            , cast(CREDITCARDID as int) as CREDIT_CARDID
            , cast(EXPMONTH as tinyint) as EXP_MONTH
            , cast(EXPYEAR as smallint) as EXP_YEAR
            , cast(MODIFIEDDATE as datetime) as MODIFIED_DATE


        from {{ source('erp', 'CREDITCARD') }}
    )

select *
from renomeado