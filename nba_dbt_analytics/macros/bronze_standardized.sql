{% macro bronze_standardized(model_name) %}
  {% set parsed = parse_model_name(model_name) %}
  {% set table_type = parsed['table_type'] %}
  {% set raw_source = parsed['source'] %}
  {% set columns = get_column_name_mapping(table_type) %}

  with bronze_table as (
    select
      file_game_id,
      {% for column in columns %}
        {{ column.raw }} as {{ column.name }}{{ ',' if not loop.last }}
      {% endfor %}
    from {{ source('raw', raw_source) }}
  )
  select * from bronze_table
  {% endmacro %}
  