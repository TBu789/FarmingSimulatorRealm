##
 # update_all_leaderboard.mcfunction
 # 
 #
 # Created by DJT3.
##
execute at @s run summon item_display ~ ~ ~ {Tags:["name"],UUID:[I;112,110,116,120],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
data modify storage leaderboard:update tags set from entity @s Tags
execute as @s run function leaderboard:lb/find_display_tag_init with storage leaderboard:update

data modify storage leaderboard:update tags set from entity @s Tags
execute as @s run function leaderboard:lb/find_max_tag_init with storage leaderboard:update
kill 00000070-0000-006e-0000-007400000078

execute as @s run function leaderboard:lb/update_leaderboard with storage leaderboard:update
