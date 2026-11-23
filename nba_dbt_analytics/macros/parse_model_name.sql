{% macro parse_model_name(model) %}
  {# bronze_tracking_0021500436 -> table_type 'tracking', game_id 21500436 #}
  {% set parts = model.identifier.split('_') %}
  {{ return({'table_type': parts[1], 'game_id': parts[2] | str}) }}
{% endmacro %}