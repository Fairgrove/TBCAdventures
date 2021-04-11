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
    [1] = { --debug node 1
        ['x'] = math.random(-300, 300),
        ['y'] = math.random(-300, 300),
        ['type'] = 1, -- 1 = normal, 2 = heroic, 3 = raid - used for coloring the ring
        ['ranks'] = {1, 5}, -- required, max
        ['preReqs'] = {-1,}, --ids of prereq nodes, -1 if none 
        ['icon']  = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Obtain a Hearthstone",
            ['objectives'] = {
                ['item'] = {
                    {"Hearthstone", 1}, -- item, items needed
                },
                ['quest'] = {
                    28713, -- Quest ID
                },
                ['reputation'] = {
                    {69, 5}, --reputation ID, Standing Requirement
                },
                ['bosskill'] = {
                    "yes",
                },

            },
        }
        
    },
    [2] = { --debug node 2
        ['x'] = math.random(-300, 300),
        ['y'] = math.random(-300, 300),
        ['type'] = 1,
        ['ranks'] = {1, 1},
        ['preReqs'] = {1,},
        ['icon']  = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "pepega Clap",
            ['objectives'] = {
                ['item'] = {
                    {"Worn Shortbow", 1}, -- item, items needed
                },
                ['quest'] = {
                },
                ['reputation'] = {
                },
                ['bosskill'] = {
                },

            },
        }
        
    },
}
--[''] = 0,
nodeDB.nodeIDs = {
    3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41
}

nodeDB.debugNodeIDs ={
    1,2,
}

--39 bubbles