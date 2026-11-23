{% macro get_column_name_mapping(table_type) %}
  {% set contracts = {
    'tracking': [
        {'raw': 'team_id',    'name': 'team_id'},
        {'raw': 'player_id',  'name': 'player_id'},
        {'raw': 'x_loc',      'name': 'x_loc'},
        {'raw': 'y_loc',      'name': 'y_loc'},
        {'raw': 'radius'      'name': 'radius'}
        {'raw': 'game_clock', 'name': 'game_clock'},
        {'raw': 'shot_clock', 'name': 'shot_clock'}
        {'raw': 'quarter',    'name': 'quarter'},
        {'raw': 'game_id',    'name': 'game_id'},
        {'raw': 'event_id',   'name': 'event_id'},
    ],
    'events': [
        {'raw': 'GAME_ID', 'name': 'game_id'},
        {'raw': 'EVENTNUM', 'name': 'event_id'},
        {'raw': 'EVENTMSGTYPE', 'name': 'event_msg_type'},
        {'raw': 'EVENTMSGACTIONTYPE', 'name': 'event_msg_action_type'},
        {'raw': 'PERIOD', 'name': 'quarter'},
        {'raw': 'WCTIMESTRING', 'name': 'wall_clock'},
        {'raw': 'PCTIMESTRING', 'name': 'period_clock_mm_ss'},
        {'raw': 'HOMEDESCRIPTION', 'name': 'home_description'},
        {'raw': 'NEUTRALDESCRIPTION', 'name': 'neutral_description'},
        {'raw': 'VISITORDESCRIPTION', 'name': 'visitor_description'},
        {'raw': 'SCORE', 'name': 'score'},
        {'raw': 'SCOREMARGIN', 'name': 'score_margin'},
        
        {'raw': 'PERSON1TYPE', 'name': 'person_1_type'},
        {'raw': 'PLAYER1_ID', 'name': 'player_1_id'},
        {'raw': 'PLAYER1_NAME', 'name': 'player_1_name'},
        {'raw': 'PLAYER1_TEAM_ID', 'name': 'player_1_team_id'},
        {'raw': 'PLAYER1_TEAM_CITY', 'name': 'player_1_team_city'},
        {'raw': 'PLAYER1_TEAM_NICKNAME', 'name': 'player_1_team_nickname'},
        {'raw': 'PLAYER1_TEAM_ABBREVIATION', 'name': 'player_1_team_abbreviation'},

        {'raw': 'PERSON2TYPE', 'name': 'person_2_type'},
        {'raw': 'PLAYER2_ID', 'name': 'player_2_id'},
        {'raw': 'PLAYER2_NAME', 'name': 'player_2_name'},
        {'raw': 'PLAYER2_TEAM_ID', 'name': 'player_2_team_id'},
        {'raw': 'PLAYER2_TEAM_CITY', 'name': 'player_2_team_city'},
        {'raw': 'PLAYER2_TEAM_NICKNAME', 'name': 'player_2_team_nickname'},
        {'raw': 'PLAYER2_TEAM_ABBREVIATION', 'name': 'player_2_team_abbreviation'},

        {'raw': 'PERSON3TYPE', 'name': 'person_3_type'},
        {'raw': 'PLAYER3_ID', 'name': 'player_3_id'},
        {'raw': 'PLAYER3_NAME', 'name': 'player_3_name'},
        {'raw': 'PLAYER3_TEAM_ID', 'name': 'player_3_team_id'},
        {'raw': 'PLAYER3_TEAM_CITY', 'name': 'player_3_team_city'},
        {'raw': 'PLAYER3_TEAM_NICKNAME', 'name': 'player_3_team_nickname'},
        {'raw': 'PLAYER3_TEAM_ABBREVIATION', 'name': 'player_3_team_abbreviation'}
    ]
  } %}
  {{ return(contracts[table_type]) }}
{% endmacro %}
