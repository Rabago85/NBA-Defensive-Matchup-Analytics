{% macro bronze_standardized(model) %}

select
  {% for c in contract(table_type) %}
    try_cast(nullif(trim({{ c.raw }}), '') as {{ c.type }}) as {{ c.name }}{{ ',' if not loop.last }}
  {% endfor %}
from {{ raw_relation }}