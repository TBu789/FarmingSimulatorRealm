##
 # append_max_players.mcfunction
 # 
 #
 # Created by DJT3.
##

execute if score lb_temp reverse_order >= dummy dummy_1 run scoreboard players set lb_max temp_score_display 2147483647
execute unless score lb_temp reverse_order >= dummy dummy_1 run scoreboard players set lb_max temp_score_display -2147483648

# Find max of all temp_score_display values

data modify storage leaderboard:temp_namelist names set from storage leaderboard:temp_namelist_unordered names
execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist names
execute unless score lb_temp namelist_size matches 0 run function leaderboard:lb/find_max

# Find player with index of max value and append it
execute as @s run function leaderboard:lb/add_player_to_ordered with storage leaderboard:temp_namelist

# Next loop ?

execute store result score lb_temp_unorderred namelist_size run data get storage leaderboard:temp_namelist_unordered names
execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist_ordered names

#$tellraw @a [{"text":"vals2 : "},{"score":{"name":"lb_temp_unorderred","objective":"namelist_size"}},{"text":",,"},{"score":{"name":"lb_temp","objective":"namelist_size"}},{"text":",,"},{"score":{"name":"lb_max","objective":"display_$(score)_maxlines"}}]
$execute as @s unless score lb_temp_unorderred namelist_size matches 0 unless score lb_temp namelist_size matches $(max_players) run function leaderboard:lb/append_max_players with storage leaderboard:update