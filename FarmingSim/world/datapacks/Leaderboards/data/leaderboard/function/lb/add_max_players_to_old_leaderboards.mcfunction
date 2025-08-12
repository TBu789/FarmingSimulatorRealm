##
 # add_max_players_to_old_leaderboards.mcfunction
 # 
 #
 # Created by DJT3.
##
data modify storage leaderboard:update tags set from entity @s Tags
data remove storage leaderboard:update max_players

execute at @s run summon item_display ~ ~ ~ {Tags:["name"],UUID:[I;112,110,116,120],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
function leaderboard:lb/find_max_tag_init with storage leaderboard:update
execute store success score lb_temp temp_tag_valid run data get storage leaderboard:update max_players

execute if score lb_temp temp_tag_valid matches 0 run data modify storage leaderboard:update tags set from entity @s Tags
execute if score lb_temp temp_tag_valid matches 0 run function leaderboard:lb/find_display_tag_init with storage leaderboard:update
kill 00000070-0000-006e-0000-007400000078
execute if score lb_temp temp_tag_valid matches 0 as @s run function leaderboard:lb/add_max_players_tag_init with storage leaderboard:update