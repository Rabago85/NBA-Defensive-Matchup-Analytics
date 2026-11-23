{% test row_count_match(model) %}

{% set model_name = model.identifier %}
{% set source_name = model_name | replace('bronze_', '') %}

with bronze_count as (
    select count(*) as row_count
    from {{ model }}
),

source_count as (
    select count(*) as row_count
    from {{ source('raw', source_name) }}
)

select *
from bronze_count
cross join source_count
where bronze_count.row_count != source_count.row_count

{% endtest %}