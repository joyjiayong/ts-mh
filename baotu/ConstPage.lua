--[[
宝图
]]
require("TSLib")

renwuban = require("renwuban.index")
Common = require("Common.index")
baotu = require("baotu.index")

page = {}

function page.index()
    renwuban.new("baotu")

    page = {
        ["-1"] = {["now"] = "-1", ["name"] = "闪退补偿", ["class"] = baotu, ["method"] = "crashCallack"},
        ["1"] = {["now"] = "1", ["name"] = "回长安", ["class"] = Common, ["method"] = "b2a", ["next"] = "2"},
        ["2"] = {["now"] = "2", ["name"] = "打开活动面板", ["class"] = renwuban, ["method"] = "open", ["next"] = "3"},
        ["3"] = {
            ["now"] = "3",
            ["name"] = "查找任务并打开",
            ["class"] = baotu,
            ["method"] = "findTaskOnTaskBoard",
            ["next"] = "4"
        },
        ["4"] = {["now"] = "4", ["name"] = "等店小二", ["class"] = baotu, ["method"] = "waitWaiter", ["next"] = "5"},
        ["5"] = {["now"] = "5", ["name"] = "领取任务", ["class"] = baotu, ["method"] = "getTask", ["next"] = "6"},
        ["6"] = {["now"] = "6", ["name"] = "右侧查找任务", ["class"] = baotu, ["method"] = "findTask", ["next"] = "7"},
        ["7"] = {["now"] = "7", ["name"] = "等待打宝图", ["class"] = baotu, ["method"] = "waitBattle", ["next"] = "8"},
        ["8"] = {["now"] = "8", ["name"] = "打开背包", ["class"] = baotu, ["method"] = "openBag", ["next"] = "9"},
        ["9"] = {["now"] = "9", ["name"] = "查找宝图", ["class"] = baotu, ["method"] = "findMap", ["next"] = "10"},
        ["10"] = {["now"] = "10", ["name"] = "使用宝图", ["class"] = baotu, ["method"] = "excute", ["next"] = "11"}
    }
    return page
end
return page