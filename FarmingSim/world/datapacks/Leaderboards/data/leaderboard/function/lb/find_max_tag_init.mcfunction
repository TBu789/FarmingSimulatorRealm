##
 # find_max_tag_init.mcfunction
 # 
 #
 # Created by DJT3.
##
data modify storage leaderboard:update crop_tag set value "too_short"
data modify storage leaderboard:update crop_tag set string storage leaderboard:update tags[-1] 0 12
function leaderboard:lb/find_max_tag with storage leaderboard:update