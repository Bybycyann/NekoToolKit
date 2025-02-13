execute store result score #temp nkTemp run data get storage nktool:array input.source[0]
execute if data storage nktool:array {input:{type:max}} if score #temp nkTemp > #extreme nkTemp run execute store result score #extreme nkTemp run data get storage nktool:array input.source[0]
execute if data storage nktool:array {input:{type:min}} if score #temp nkTemp < #extreme nkTemp run execute store result score #extreme nkTemp run data get storage nktool:array input.source[0]
data remove storage nktool:array input.source[0]
execute store result score #arr nkTemp run data get storage nktool:array input.source
execute if score #arr nkTemp matches 0 run return run data remove storage nktool:array input
function nktool:extreme/main