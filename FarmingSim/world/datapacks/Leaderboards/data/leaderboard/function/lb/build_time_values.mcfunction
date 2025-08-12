##
 # build_time_values.mcfunction
 # 
 #
 # Created by DJT3.
##
$execute store result score lb_temp value run scoreboard players get $(name) $(score)

scoreboard players operation lb_temp value_0 = lb_temp value
scoreboard players operation lb_temp value_0 %= dummy dummy_20
scoreboard players operation lb_temp value_0 *= dummy dummy_5
scoreboard players operation lb_temp value_1 = lb_temp value
scoreboard players operation lb_temp value_1 /= dummy dummy_20
scoreboard players operation lb_temp value_2 = lb_temp value_1
scoreboard players operation lb_temp value_1 %= dummy dummy_60
scoreboard players operation lb_temp value_2 /= dummy dummy_60
scoreboard players operation lb_temp value_3 = lb_temp value_2
scoreboard players operation lb_temp value_2 %= dummy dummy_60
scoreboard players operation lb_temp value_3 /= dummy dummy_60

execute store result storage leaderboard:line value_0 int 1 run scoreboard players get lb_temp value_0
execute store result storage leaderboard:line value_1 int 1 run scoreboard players get lb_temp value_1
execute store result storage leaderboard:line value_2 int 1 run scoreboard players get lb_temp value_2
execute store result storage leaderboard:line value_3 int 1 run scoreboard players get lb_temp value_3