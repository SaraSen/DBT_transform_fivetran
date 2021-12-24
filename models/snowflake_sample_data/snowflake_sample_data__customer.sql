with source_customers as (
    select * from {{ source('snowflake_sample_data', 'CUSTOMER') }}
),

final as (
    select * from source_customers
)

select * from final