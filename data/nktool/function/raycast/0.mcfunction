#调用例: function nktool:raycast/0 检测距离默认范围0..5.1
scoreboard players set #raycast nkTemp 0
execute anchored eyes run function nktool:raycast/main
scoreboard players reset #raycast nkTemp