--NAMESPACE
-------------------------------------
local _, core = ...;
core.nodeDB = {}; -- adds nodeData table to addon namespace

local nodeDB = core.nodeDB; -- so i dont have to type core.nodeData all the time

--Actual Code
-------------------------------------

nodeDB.keys = {
    ['name'] = 1,
    ['x'] = 2,
    ['y'] = 3,
    ['textures'] = {
        ['icon'] = {
            ['texture'] = "dadadad",
            ['color'] = {},
        },
        ['ring'] = {
            ['texture'] = "",
            ['color'] = {},
        },
        ['highlight'] = {
            ['texture'] = "",
            ['color'] = {},
        },
    }
}

nodeDB.nodeData = {
    [1] = {
        "debug Node", 
        math.random(-300, 300), 
        math.random(-300, 300), 
        {
            {
                "interface/icons/inv_mushroom_10",
                {1, 1, 1, 1},
            },{
                "Interface/Artifacts/Artifacts-PerkRing-Final-Mask",
                {1, 1, 1, 1},
            },{
                "interface/icons/inv_mushroom_12",
                {1, 1, 1, 1},
            },
        },
    },
    [2] = 1
}

function nodeDB:GetName()
	return self.nodeData[1][1]
end
--core.nodeDB.nodeData[1][1]
--core.nodeDB.nodeData[nodeID]
--39 bubbles