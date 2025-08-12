##
 # get_player_rank.mcfunction
 # 
 #
 # Created by DJT3.
##
data modify storage leaderboard:temp_player player set from storage leaderboard:temp_namelist names[-1]
data remove storage leaderboard:temp_namelist names[-1]

execute at @s as @p run function leaderboard:lb/get_closest_player_name
execute run function leaderboard:lb/get_score_values with storage leaderboard:temp_player

execute if entity @s[tag=!no_zero,tag=!reverse] if score lb_temp temp_max >= lb_temp value run scoreboard players add lb_temp temp_rank 1
execute if entity @s[tag=!no_zero,tag=reverse] if score lb_temp temp_max <= lb_temp value run scoreboard players add lb_temp temp_rank 1

execute if entity @s[tag=no_zero,tag=!reverse] unless score lb_temp temp_max matches 0 if score lb_temp temp_max >= lb_temp value run scoreboard players add lb_temp temp_rank 1
execute if entity @s[tag=no_zero,tag=reverse] unless score lb_temp temp_max matches 0 if score lb_temp temp_max <= lb_temp value run scoreboard players add lb_temp temp_rank 1

execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist names
execute unless score lb_temp namelist_size matches 0 run function leaderboard:lb/get_player_rank





