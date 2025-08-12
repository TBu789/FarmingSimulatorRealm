##
 # add_leaderboard.mcfunction
 # 
 #
 # Created by DJT3.
##
$execute run summon text_display ~ ~2.5 ~ {Tags:["display_$(score)","top","leaderboard","max_players_$(max_players)"],billboard:$(billboard),transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[1.3f,1.3f,1.3f]},text:'{"text":"$(display_name)"}'}

$execute at @n[type=minecraft:text_display,tag=top,tag=leaderboard,tag=display_$(score)] run function leaderboard:commands/edit_leaderboard {max_players:$(max_players),score:$(score),reverse_order:$(reverse_order),time_mode:$(time_mode),no_zero:$(no_zero),display_name:"$(display_name)",billboard:"$(billboard)",medal_color:$(medal_color),always_show_closest_player:$(always_show_closest_player)}

$data modify storage leaderboard:line score set value $(score)
schedule function leaderboard:lb/update_all_init 1t replace