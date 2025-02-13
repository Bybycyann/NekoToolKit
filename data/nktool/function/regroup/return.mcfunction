#判断temp是否满足列表旋转条件(0: 剔除元素输出 1: 保留元素输出)
execute if score #output nkTemp matches 0 if data storage nktool:array {input:{temp:1b}} run data modify storage nktool:array output append from storage nktool:array output[0]
execute if score #output nkTemp matches 1 unless data storage nktool:array {input:{temp:1b}} run data modify storage nktool:array output append from storage nktool:array output[0]
data remove storage nktool:array output[0]
#重置比对逻辑值
data remove storage nktool:array input.temp