scoreboard objectives add cw_ender_open minecraft.custom:minecraft.open_enderchest
scoreboard objectives add cw_ender_craft dummy
scoreboard objectives add cw_ender_craft1 dummy
scoreboard objectives add cw_ender_drop minecraft.custom:minecraft.drop

forceload add 69420 69420
setblock 69420 0 69420 shulker_box

schedule function cw_menu:message 1t
schedule function ender_craft:message 2t