name = "NoMu开服自用"
description = [[
【瞎玩·自动挂皮肤档】附加mod
- 服内皮肤共享
- 出生额外物品
- 部分物品无耐久
- 所有配置均有开关
- github:
]]
author = "NoMu"
version = "0.0.1"

dst_compatible = true
client_only_mod = false
all_clients_require_mod = false

icon_atlas = "modicon.xml"
icon = "modicon.tex"

api_version = 10

local infinite_items = {
    { 'orangestaff', '懒人魔杖' },
    { 'golden_farm_hoe', '黄金园艺锄' },
    { 'goldenshovel', '黄金铲子' },
    { 'panflute', '排箫' },
    { 'glasscutter', '玻璃刀' },
}

configuration_options = {
    {
        name = "super_reskin",
        label = "皮肤共享",
        options = {
            { description = "开启", data = true, hover = "" },
            { description = "关闭", data = false, hover = "" }
        },
        default = true
    },
    {
        name = "extra_things",
        label = "出生额外物品",
        options = {
            { description = "开启", data = true, hover = "" },
            { description = "关闭", data = false, hover = "" }
        },
        default = true
    },
    {
        name = "spawn_tips",
        label = "出生提示",
        options = {
            { description = "开启", data = true, hover = "" },
            { description = "关闭", data = false, hover = "" }
        },
        default = true
    }
}

local start_index = #configuration_options;

for i = 1, #infinite_items do
    configuration_options[i + start_index] = {
        name = "infinite_" .. infinite_items[i][1],
        label = infinite_items[i][2] .. "无耐久",
        options = {
            { description = "开启", data = true, hover = "" },
            { description = "关闭", data = false, hover = "" }
        },
        default = true
    }
end