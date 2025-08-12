##
 # remove_closest_line.mcfunction
 # 
 #
 # Created by DJT3.
##
execute as @s run scoreboard players operation lb_temp temp_lines += dummy dummy_1
execute store result storage leaderboard:line lines int 1 run scoreboard players get lb_temp temp_lines
execute as @s run scoreboard players operation lb_temp temp_lines += dummy dummy_1
execute store result storage leaderboard:line sep_min double 0.29999999999 run scoreboard players get lb_temp temp_lines
execute store result storage leaderboard:line sep_max double 0.30000000001 run scoreboard players get lb_temp temp_lines

execute as @s run function leaderboard:lb/remove_one_line with storage leaderboard:line