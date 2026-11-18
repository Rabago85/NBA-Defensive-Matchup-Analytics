{% macro column_contract(table_type) %}
  {% set contracts = {
    'tracking': [
        {'raw': 'team_id',    'name': 'team_id',    'type': 'int', 'key': true},
        {'raw': 'player_id',  'name': 'player_id',  'type': 'int', 'key': true},
        {'raw': 'x_loc',      'name': 'x_loc',      'type': 'double', 'min': 0, 'max': 94},
        {'raw': 'y_loc',      'name': 'y_loc',      'type': 'double', 'min': 0, 'max': 50},
        {'raw': 'radius'      'name': 'radius',     'type': double}
        {'raw': 'game_clock', 'name': 'game_clock', 'type': 'double', 'key': true, 'min': 0, 'max': 720},
        {'raw': 'shot_clock', 'name': 'shot_clock', 'type': 'double', 'min': 0, 'max': 24}
        {'raw': 'quarter',    'name': 'quarter',    'type': 'int',    'key': true, 'min': 1, 'max': 7},
        {'raw': 'game_id',    'name': 'game_id',    'type': 'bigint', 'key': true},
        {'raw': 'event_id',   'name': 'event_id',   'type': 'bigint', 'key': true},

        {'raw': '',     'name': '',     'type': '', 'key': true},

    ],
    'events': [
      {'raw': 'GAME_ID',      'name': 'game_id',      'type': 'str', 'key': true},
      {'raw': 'EVENTNUM',     'name': 'event_id',     'type': 'int', 'key': true},
      {'raw': 'EVENTMSGTYPE',     'name': '',     'type': '', 'key': true},
      {'raw': 'EVENTMSGACTIONTYPE',     'name': '',     'type': '', 'key': true},
      {'raw': 'PERIOD',       'name': 'quarter',      'type': 'int',    'min': 1, 'max': 7},
      {'raw': 'WCTIMESTRING',     'name': '',     'type': '', 'key': true},
      {'raw': 'PCTIMESTRING', 'name': 'period_clock', 'type': 'string', 'format': '^\\d{1,2}:\\d{2}$'},
      {'raw': 'HOMEDESCRIPTION',     'name': '',     'type': '', 'key': true},
      {'raw': 'NEUTRALDESCRIPTION',     'name': '',     'type': '', 'key': true},
      {'raw': 'VISITORDESCRIPTION',     'name': '',     'type': '', 'key': true},
      {'raw': 'SCORE',     'name': '',     'type': '', 'key': true},
      {'raw': 'SCOREMARGIN',     'name': '',     'type': '', 'key': true},
      {'raw': 'PERSON1TYPE',  'name': 'person1_type', 'type': 'int'},
      {'raw': 'PLAYER1_ID',   'name': 'player1_id',   'type': 'bigint'}
      {'raw': 'PLAYER1_NAME',     'name': '',     'type': '', 'key': true},
      {'raw': 'PLAYER1_TEAM_ID',     'name': '',     'type': '', 'key': true},
      {'raw': 'PLAYER1_TEAM_CITY',     'name': '',     'type': '', 'key': true},
      {'raw': 'PLAYER1_TEAM_NICKNAME',     'name': '',     'type': '', 'key': true},
      {'raw': 'PLAYER1_TEAM_ABBREVIATION',     'name': '',     'type': '', 'key': true},
    ]
    'events': [
        {'raw': 'GAME_ID', 'name': 'game_id', 'type': 'str', 'key': true},
        {'raw': 'EVENTNUM', 'name': 'event_id', 'type': 'int', 'key': true},
        {'raw': 'EVENTMSGTYPE', 'name': 'event_msg_type', 'type': '', 'key': true},
        {'raw': 'EVENTMSGACTIONTYPE', 'name': 'event_msg_action_type', 'type': '', 'key': true},
        {'raw': 'PERIOD', 'name': 'quarter', 'type': 'int', 'min': 1, 'max': 7},
        {'raw': 'WCTIMESTRING', 'name': 'wall_clock_time', 'type': '', 'key': true},
        {'raw': 'PCTIMESTRING', 'name': 'period_clock', 'type': 'string', 'format': '^\\d{1,2}:\\d{2}$'},
        {'raw': 'HOMEDESCRIPTION', 'name': 'home_description', 'type': '', 'key': true},
        {'raw': 'NEUTRALDESCRIPTION', 'name': 'neutral_description', 'type': '', 'key': true},
        {'raw': 'VISITORDESCRIPTION', 'name': 'visitor_description', 'type': '', 'key': true},
        {'raw': 'SCORE', 'name': 'score', 'type': '', 'key': true},
        {'raw': 'SCOREMARGIN', 'name': 'score_margin', 'type': '', 'key': true},
        {'raw': 'PERSON1TYPE', 'name': 'person1_type', 'type': 'int'},
        {'raw': 'PLAYER1_ID', 'name': 'player1_id', 'type': 'bigint'},
        {'raw': 'PLAYER1_NAME', 'name': 'player1_name', 'type': '', 'key': true},
        {'raw': 'PLAYER1_TEAM_ID', 'name': 'player1_team_id', 'type': '', 'key': true},
        {'raw': 'PLAYER1_TEAM_CITY', 'name': 'player1_team_city', 'type': '', 'key': true},
        {'raw': 'PLAYER1_TEAM_NICKNAME', 'name': 'player1_team_nickname', 'type': '', 'key': true},
        {'raw': 'PLAYER1_TEAM_ABBREVIATION', 'name': 'player1_team_abbreviation', 'type': '', 'key': true},

        {'raw': 'PERSON2TYPE', 'name': 'person2_type', 'type': 'int'},
        {'raw': 'PLAYER2_ID', 'name': 'player2_id', 'type': 'bigint'},
        {'raw': 'PLAYER2_NAME', 'name': 'player2_name', 'type': '', 'key': true},
        {'raw': 'PLAYER2_TEAM_ID', 'name': 'player2_team_id', 'type': '', 'key': true},
        {'raw': 'PLAYER2_TEAM_CITY', 'name': 'player2_team_city', 'type': '', 'key': true},
        {'raw': 'PLAYER2_TEAM_NICKNAME', 'name': 'player2_team_nickname', 'type': '', 'key': true},
        {'raw': 'PLAYER2_TEAM_ABBREVIATION', 'name': 'player2_team_abbreviation', 'type': '', 'key': true},

        {'raw': 'PERSON3TYPE', 'name': 'person3_type', 'type': 'int'},
        {'raw': 'PLAYER3_ID', 'name': 'player3_id', 'type': 'bigint'},
        {'raw': 'PLAYER3_NAME', 'name': 'player3_name', 'type': '', 'key': true},
        {'raw': 'PLAYER3_TEAM_ID', 'name': 'player3_team_id', 'type': '', 'key': true},
        {'raw': 'PLAYER3_TEAM_CITY', 'name': 'player3_team_city', 'type': '', 'key': true},
        {'raw': 'PLAYER3_TEAM_NICKNAME', 'name': 'player3_team_nickname', 'type': '', 'key': true},
        {'raw': 'PLAYER3_TEAM_ABBREVIATION', 'name': 'player3_team_abbreviation', 'type': '', 'key': true}
    ]
  } %}
  {{ return(contracts[table_type]) }}
{% endmacro %}

select
  {% for c in contract(table_type) %}
    try_cast(nullif(trim({{ c.raw }}), '') as {{ c.type }}) as {{ c.name }}{{ ',' if not loop.last }}
  {% endfor %}
from {{ raw_relation }}