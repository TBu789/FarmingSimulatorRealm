##
 # update_line.mcfunction
 # 
 #
 # Created by DJT3.
##
$execute if score lb_temp time_mode matches 0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value '{"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value)","color":"red"}]}'

#Time
# XH Xm Xs XXms
$execute if score lb_temp time_mode matches 2 if score lb_temp value_3 >= dummy dummy_1 unless score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value '{"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_3)h $(value_2)m $(value_1).$(value_0)s","color":"red"}]}'
# XH Xm Xs 0Xms
$execute if score lb_temp time_mode matches 2 if score lb_temp value_3 >= dummy dummy_1 if score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value '{"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_3)h $(value_2)m $(value_1).0$(value_0)s","color":"red"}]}'

# XH Xm
$execute if score lb_temp time_mode matches 1 if score lb_temp value_3 >= dummy dummy_1 unless score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value '{"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_3)h $(value_2)m $(value_1)s","color":"red"}]}'
# XH Xm
$execute if score lb_temp time_mode matches 1 if score lb_temp value_3 >= dummy dummy_1 if score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value '{"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_3)h $(value_2)m $(value_1)s","color":"red"}]}'

# Xm Xs XXms
$execute if score lb_temp time_mode matches 1.. if score lb_temp value_2 >= dummy dummy_1 unless score lb_temp value_3 >= dummy dummy_1 unless score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value '{"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_2)m $(value_1).$(value_0)s","color":"red"}]}'
# Xm Xs 0Xms
$execute if score lb_temp time_mode matches 1.. if score lb_temp value_2 >= dummy dummy_1 unless score lb_temp value_3 >= dummy dummy_1 if score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value '{"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_2)m $(value_1).0$(value_0)s","color":"red"}]}'

# Xs XXms
$execute if score lb_temp time_mode matches 1.. unless score lb_temp value_2 >= dummy dummy_1 unless score lb_temp value_3 >= dummy dummy_1 unless score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value '{"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_1).$(value_0)s","color":"red"}]}'
# Xs 0Xms
$execute if score lb_temp time_mode matches 1.. unless score lb_temp value_2 >= dummy dummy_1 unless score lb_temp value_3 >= dummy dummy_1 if score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value '{"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_1).0$(value_0)s","color":"red"}]}'
# background
$execute at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] background set value -1777069036
$execute at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] default_background set value $(close_background)