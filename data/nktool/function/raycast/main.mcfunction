#判断 #raycast 的值是否大于 51, 若满足则返回 0
execute if score #raycast nkTemp matches 51.. run \
    return fail
#当前位置是否存在方块阻挡, 若存在则在此处生成 Marker 实体标记并退出
execute align xyz unless block ~ ~ ~ minecraft:air run \
    return run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["nkraycast"]}
#进位 #raycast 并将射线步进 0.1
scoreboard players add #raycast nkTemp 1
execute positioned ^ ^ ^0.09 run function nktool:raycast/main