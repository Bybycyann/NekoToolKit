#预处理
data modify storage nktool:array output set from storage nktool:array input.source
#<if #arr nkTemp matches 1>容器内容物条件性列表输出(借助components."minecraft:custom_data".tag)
execute if score #arr nkTemp matches 1 run return run function nktool:regroup/main/container
function nktool:regroup/main/basic