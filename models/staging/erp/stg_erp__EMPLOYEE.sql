With
    renomeado as (
        select
            cast(BIRTHDATE as date) as BIRTH_DATE
            , cast(BUSINESSENTITYID as int) as BUSINES_SENTITY_ID
            , cast(CURRENTFLAG as int) as CURRENT_FLAG
            , cast(GENDER as varchar) as GENDER
            , cast(HIREDATE as date) as HIRE_DATE
            , cast(JOBTITLE as varchar) as JOB_TITLE
            , cast(LOGINID as varchar) as LOGIN_ID
            , cast(MARITALSTATUS as varchar) as MARITAL_STATUS
            , cast(MODIFIEDDATE as datetime) as MODIFIED_DATE
            , cast(NATIONALIDNUMBER as varchar) as NATIONAL_ID_NUMBER
            , cast(ORGANIZATIONNODE as varchar) as ORGANIZATION_NODE
            , cast(ROWGUID as varchar) as ROW_GUID
            , cast(SALARIEDFLAG as int) as SALARIED_FLAG
            , cast(SICKLEAVEHOURS as smallint) as SICK_LEAVE_HOURS
            , cast(VACATIONHOURS as smallint) as VACATION_HOURS


        from {{ source('erp', 'EMPLOYEE') }}
    )

select *
from renomeado