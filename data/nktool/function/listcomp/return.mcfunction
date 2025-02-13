#处理返回值
execute if data storage nktool:array {input:{temp:1b}} run data modify storage nktool:array output append from storage nktool:array input.after[0]
#旋转after列表
data modify storage nktool:array input.after append from storage nktool:array input.after[0]
data remove storage nktool:array input.after[0]
#重置比对逻辑值
data remove storage nktool:array input.temp