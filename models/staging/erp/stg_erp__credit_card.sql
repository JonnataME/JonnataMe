with
    credit_card as (  
        select 
            cast(cardtype as varchar) as card_type
            , cast(creditcardid as int) as credit_card_id
        from {{ source('erp', 'creditcard') }}  
    )  

select *
from credit_card
