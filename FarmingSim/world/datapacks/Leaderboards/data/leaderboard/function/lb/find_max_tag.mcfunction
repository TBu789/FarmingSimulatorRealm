##
 # find_max_tag.mcfunction
 # 
 #
 # Created by DJT3.
##
$tag 00000070-0000-006e-0000-007400000078 add $(crop_tag)
execute store result score lb_temp temp_tag_valid run tag 00000070-0000-006e-0000-007400000078 add max_players_
execute if score lb_temp temp_tag_valid matches 0 run data modify storage leaderboard:update max_players set string storage leaderboard:update tags[-1] 12
$tag 00000070-0000-006e-0000-007400000078 remove $(crop_tag)
tag 00000070-0000-006e-0000-007400000078 remove max_players_
execute store result score lb_temp temp_nb_tags run data get storage leaderboard:update tags
execute if score lb_temp temp_tag_valid matches 1 unless score lb_temp temp_nb_tags matches 0 run data remove storage leaderboard:update tags[-1]
execute if score lb_temp temp_tag_valid matches 1 unless score lb_temp temp_nb_tags matches 0 run function leaderboard:lb/find_max_tag_init with storage leaderboard:update