{% test unique_teams_and_ball_matches_expected(model, expected_count) %}
{%- set expected_count = var('unique_teams_and_ball')[expected_count] -%}
select
    count(distinct team_id) as team_id_count,
    {{ expected_count}} as expected_count,
from {{ model }}
where team_id_count != expected_count
{% endtest %}
