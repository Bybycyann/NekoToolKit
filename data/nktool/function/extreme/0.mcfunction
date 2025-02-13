#预处理
execute store result score #extreme nkTemp run data get storage nktool:array input.source[0]
data remove storage nktool:array input.source[0]
#调用main函数
function nktool:extreme/main