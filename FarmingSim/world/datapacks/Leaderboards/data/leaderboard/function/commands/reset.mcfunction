##
 # reset.mcfunction
 # lb
 #
 # Created by DJT3.
##
scoreboard objectives add temp_score_display dummy
scoreboard objectives add temp_tag_valid dummy
scoreboard objectives add temp_nb_tags dummy
scoreboard objectives add temp_rank dummy
scoreboard objectives add temp_lines dummy
scoreboard objectives add temp_max dummy
scoreboard objectives add namelist_size dummy
scoreboard objectives add index dummy
scoreboard objectives add dummy_0 dummy
scoreboard objectives add dummy_1 dummy
scoreboard objectives add dummy_2 dummy
scoreboard objectives add dummy_3 dummy
scoreboard objectives add dummy_5 dummy
scoreboard objectives add dummy_20 dummy
scoreboard objectives add dummy_60 dummy
scoreboard objectives add reverse_order dummy
scoreboard objectives add time_mode dummy
scoreboard objectives add medal_color dummy
scoreboard objectives add always_show_closest_player dummy
scoreboard objectives add value dummy
scoreboard objectives add value_0 dummy
scoreboard objectives add value_1 dummy
scoreboard objectives add value_2 dummy
scoreboard objectives add value_3 dummy
scoreboard objectives add init_state dummy
scoreboard objectives add line_killed dummy
scoreboard objectives add new_max dummy
scoreboard objectives add forceload_status dummy
scoreboard players set dummy dummy_0 0
scoreboard players set dummy dummy_1 1
scoreboard players set dummy dummy_2 2
scoreboard players set dummy dummy_3 3
scoreboard players set dummy dummy_5 5
scoreboard players set dummy dummy_20 20
scoreboard players set dummy dummy_60 60

#remove old storage
data remove storage leaderboard:update_uuid UUID_0
data remove storage leaderboard:update_uuid UUID_1
data remove storage leaderboard:update_uuid UUID_2
data remove storage leaderboard:update_uuid UUID_3

# Set new per-leaderboard max_players
execute as @e[type=minecraft:text_display,tag=top,tag=leaderboard,sort=arbitrary] run function leaderboard:lb/add_max_players_to_old_leaderboards

kill @e[type=minecraft:text_display,tag=leaderboard,tag=!top]
kill 00000070-0000-006e-0000-007400000078

# remove old max_players scoreboards
execute if score lb_temp init_state matches 1 run schedule function leaderboard:lb/remove_old_scoreboards 1s

scoreboard players add lb_temp init_state 1
schedule function leaderboard:lb/update_all_init 1s replace
tellraw @a ["",{"text":"Leaderboards ","color":"gold"},{"text":"datapack "},{"text":"loaded","color":"green"}]

# remove old forceload
execute store result score lb_temp forceload_status run forceload query 0 0
execute as @a if score lb_temp forceload_status matches 1 run tellraw @s ["[",{"color":"gold","text":"LeaderBoards"},"]: Detected unneeded forceload, click ",{"bold":true,"clickEvent":{"action":"run_command","value":"/forceload remove 0 0"},"color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"text":"Remove Forceload on chunk 0 0","color":"red","bold":true}]},"text":"here","underlined":true}," to remove it"]