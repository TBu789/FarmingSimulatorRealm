##
 # add_close_player_line.mcfunction
 # 
 #
 # Created by DJT3.
##
execute store result storage leaderboard:line rank int 1 run scoreboard players get lb_temp temp_rank

scoreboard players operation lb_temp temp_lines += dummy dummy_1
scoreboard players operation lb_temp temp_rank = lb_temp temp_lines
scoreboard players operation lb_temp temp_rank += dummy dummy_1

execute store result storage leaderboard:line lines int 1 run scoreboard players get lb_temp temp_lines
execute store result storage leaderboard:line sep double 0.30 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line sep_min double 0.29999999999 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line sep_max double 0.30000000001 run scoreboard players get lb_temp temp_rank

execute as @s run function leaderboard:lb/add_line with storage leaderboard:line
execute as @s run function leaderboard:lb/update_line_init with storage leaderboard:line