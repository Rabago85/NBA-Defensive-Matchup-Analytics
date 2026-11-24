{% macro parse_model_name(model_name) %}
  {# bronze_tracking_0021500436 -> table_type 'tracking', game_id 0021500436 #}
  {% set parts = model_name.split('_') %}
  {{ return({
              'table_type': parts[1], 
              'game_id': parts[2],
              'source': parts[1] ~ "_" ~ parts[2]
  })}}
{% endmacro %}