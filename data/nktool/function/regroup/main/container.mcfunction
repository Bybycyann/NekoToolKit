#将 source[0] 与 condition 进行比对, 若失败则返回 1b 给input.temp
execute store success storage nktool:array input.temp byte 1 run data modify storage nktool:array input.source[0].components."minecraft:custom_data".tag set from storage nktool:array input.condition
#剔除 source[0]
data remove storage nktool:array input.source[0]
#调用 return 函数处理返回值
function nktool:regroup/return
#递归条件判断
execute store result score #arr nkTemp run data get storage nktool:array input.source
execute if score #arr nkTemp matches 0 run return run data remove storage nktool:array input
function nktool:regroup/main/container