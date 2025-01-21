With
    renomeado as (
        select
            cast(ADDITIONALCONTACTINFO as varchar) as ADDITIONAL_CONTACT_INFO
            , cast(BUSINESSENTITYID as int) as BUSINESS_ENTITY_ID
            , cast(DEMOGRAPHICS as varchar) as DEMOGRAPHICS
            , cast(EMAILPROMOTION as int) as EMAIL_PROMOTION
            , cast(FIRSTNAME as varchar) as FIRST_NAME
            , cast(LASTNAME as varchar) as LAST_NAME
            , cast(MIDDLENAME as varchar) as MIDDLE_NAME
            , cast(MODIFIEDDATE as date) as MODIFIED_DATE
            , cast(NAMESTYLE as int) as NAME_STYLE
            , cast(PERSONTYPE as varchar) as PERSON_TYPE
            , cast(ROWGUID as varchar) as ROW_GUID
            , cast(SUFFIX as varchar) as SUFFIX
            , cast(TITLE as varchar) as TITLE
        from {{ source('erp', 'PERSON') }}
    )

    select *
    from renomeado