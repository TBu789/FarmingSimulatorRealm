##
 # find_display_tag.mcfunction
 # 
 #
 # Created by DJT3.
##
$tag 00000070-0000-006e-0000-007400000078 add $(crop_tag)
execute store result score lb_temp temp_tag_valid run tag 00000070-0000-006e-0000-007400000078 add display_
execute if score lb_temp temp_tag_valid matches 0 run data modify storage leaderboard:update score set string storage leaderboard:update tags[-1] 8
$tag 00000070-0000-006e-0000-007400000078 remove $(crop_tag)
tag 00000070-0000-006e-0000-007400000078 remove display_
execute if score lb_temp temp_tag_valid matches 1 run data remove storage leaderboard:update tags[-1]
execute if score lb_temp temp_tag_valid matches 1 run function leaderboard:lb/find_display_tag_init with storage leaderboard:update