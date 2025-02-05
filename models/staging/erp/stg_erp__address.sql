with
    address as (
        select
            cast(addressid as int) as address_id
            , cast(stateprovinceid as int) as state_province_id
            , cast(postalcode as varchar) as postal_code
            , cast(city as varchar) as city_name
        from {{ source('erp', 'address') }}  
    )

select *
from address
