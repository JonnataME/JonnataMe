With
    renomeado as (
        select
            cast(ADDRESSID as int) as ADDRESS_ID
            , cast(ADDRESSLINE1 as varchar) as ADDRESS_LINE_1
            , cast(ADDRESSLINE2 as varchar) as ADDRESS_LINE_2
            , cast(CITY as varchar) as CITY
            , cast(MODIFIEDDATE as datetime) as MODIFIED_DATE
            , cast(POSTALCODE as varchar) as POSTAL_CODE
            , cast(ROWGUID as varchar) as ROW_GUID
            , cast(SPATIALLOCATION as VARCHAR) as SPATIAL_LOCATION
            , cast(STATEPROVINCEID as int) as STATE_PROVINCE_ID
        from {{ source('erp', 'ADDRESS') }}
    )

    select *
    from renomeado