--NAMESPACE
-------------------------------------
local _, core = ...;
core.nodeDB = {}; -- adds nodeDB table to addon namespace

local nodeDB = core.nodeDB; -- so i dont have to type core.nodeData all the time

--Actual Code
-------------------------------------

local isCompleted = function(status)
    if status then
        return "true"
    else
        return "false"
    end
end

local isFriendly = function(id)
    local _,_,status = GetFactionInfoByID(id)
    if status >= 5 then
        return "true"
    else
        return "false"
    end
end

--DB
-------------------------------------
nodeDB.nodeData = {
    [0] = {
        ['name'] = "debug Node", 
        ['x'] = -450, --math.random(-300, 300)
        ['y'] = 330, 
        ['type'] = 1, -- 1 = quest, 2 = easy, 3 = raid
        ['unlocked'] = true, --ispurchased()
        ['textures'] = {
            ['icon']  = "interface/icons/inv_mushroom_10",
            ['ring'] = "Interface/Artifacts/Artifacts-PerkRing-Final-Mask",
            ['glow'] = "interface/icons/inv_mushroom_12",  
            ['unpurchased'] = "interface/icons/inv_mushroom_11",
        },
        ['tooltip'] = {
            ['titleText'] = "Obtain a Hearthstone",
            ['objectives'] = {
                ['item'] = {
                    {"Hearthstone", 1}, -- item, items needed
                    {"Hearthstone", 2}
                },
                ['quest'] = {
                    28714, -- fel moss quest
                    28713, -- balance of nature 
                },
                ['reputation'] = {
                    {69, 5}, --isFriendly(69) -- Darnassus
                    {1134, 5}
                },
                ['bosskill'] = {
                    "yes",
                    "yes",
                },

            },
        }
        
    },
}
--[''] = 0,
nodeDB.nodeIDs = {
    1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,
}



--39 bubbles