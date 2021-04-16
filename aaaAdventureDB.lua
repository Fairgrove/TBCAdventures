--NAMESPACE
-------------------------------------
local _, core = ...;
core.nodeDB = {}; -- adds nodeDB table to addon namespace

local nodeDB = core.nodeDB; -- so i dont have to type core.nodeData all the time

--DB
-------------------------------------
nodeDB.debugData = {
    [1] = { --debug node 1
        ['x'] = math.random(-300, 300),
        ['y'] = math.random(-300, 300),
        ['type'] = 1, -- 1 = normal, 2 = heroic, 3 = raid - used for coloring the ring
        ['preReqs'] = {}, --ids of prereq nodes, -1 if none 
        ['icon']  = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Obtain a Hearthstone",
            ['objectives'] = {
                ['level'] = 2, --0 for none
                ['spell'] = {
                     --riding in TBC = 762
                },
                ['item'] = {
                    {"Hearthstone", 1}, -- item, items needed
                },
                ['quest'] = {
                    456, -- Quest ID
                },
                ['reputation'] = {
                    {69, 5}, --reputation ID, Standing Requirement, 4 = neutral
                },
                ['bosskill'] = {
                    "yes",
                },

            },
        }
        
    },
    [2] = {
        ['x'] = math.random(-300, 300),
        ['y'] = math.random(-300, 300),
        ['type'] = 1,
        ['preReqs'] = {1,},
        ['icon']  = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "pepega Clap",
            ['objectives'] = {
                ['level'] = 6,
                ['spell'] = {
                    6743, --riding in TBC = 762
                },
                ['item'] = {
                    {'Hearthstone', 1},
                },
                ['quest'] = {
                    456,
                },
                ['reputation'] = {
                    {69, 8}, --reputation ID, Standing Requirement, 4 = neutral
                },
                ['bosskill'] = {
                    "yes",
                },
            },
        },       
    },
}

nodeDB.dummyData = {
    [1] = {
        ['x'] = 0,
        ['y'] = -200,
        ['type'] = 1, 
        ['preReqs'] = {1,}, 
        ['icon']  = 'interface/icons/spell_nature_swiftness',
        ['tooltip'] = {
            ['titleText'] = 'Reach Level 2',
            ['objectives'] = {
                ['level'] = 2, --0 for none
                ['spell'] = {
                },
                ['item'] = { 
                },
                ['quest'] = { 
                },
                ['reputation'] = {
                },
                ['bosskill'] = {
                    'yes',
                },
            },
        },
    },
    [2] = {
        ['x'] = 100,
        ['y'] = -200,
        ['type'] = 1, 
        ['preReqs'] = {1,}, 
        ['icon']  = "interface/icons/spell_shadow_ritualofsacrifice",
        ['tooltip'] = {
            ['titleText'] = "Learn Sinister Strike",
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                    1752,
                },
                ['item'] = {
                },
                ['quest'] = { 
                },
                ['reputation'] = {
                },
                ['bosskill'] = {
                    "yes",
                },
            },
        },
    },
    [3] = {
        ['x'] = -100,
        ['y'] = 0,
        ['type'] = 1, 
        ['preReqs'] = {1,}, 
        ['icon']  = "interface/icons/ability_backstab",
        ['tooltip'] = {
            ['titleText'] = "Complete Balance of nature",
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                },
                ['item'] = {
                },
                ['quest'] = { 
                    456,
                },
                ['reputation'] = {
                },
                ['bosskill'] = {
                    "yes",
                },
            },
        },
    },
    [4] = {
        ['x'] = 100,
        ['y'] = 0,
        ['type'] = 1, 
        ['preReqs'] = {2,3}, 
        ['icon']  = "interface/icons/classicon_rogue",
        ['tooltip'] = {
            ['titleText'] = "Reach Level 3",
            ['objectives'] = {
                ['level'] = 3,
                ['spell'] = {
                },
                ['item'] = {
                    {"Pendulum of Doom", 1}
                },
                ['quest'] = { 
                },
                ['reputation'] = {
                    {69, 6},
                },
                ['bosskill'] = {
                    "yes",
                },
            },
        }   
    },
}

nodeDB.newData = {
    [1] = {
        ['x'] = -300,
        ['y'] = -300,
        ['type'] = 1,
        ['preReq'] = {},
        ['icon'] = 'interface/icons/inv_misc_rune_01',
        ['tooltip'] = {
            ['titleText'] = 'pepega Clap',
            ['objectives'] = {
                ['level'] = 1,
                ['spell'] = {
                },
                ['item'] = {
                },
                ['quest'] = {
                },
                ['reputation'] = {
                },
                ['bosskill'] = {
                    'yes',
                },
            },
        },
    },
    [2] = {
        ['x'] = -200,
        ['y'] = -300,
        ['type'] = 1,
        ['preReq'] = {1,},
        ['icon'] = 'interface/icons/inv_misc_rune_01',
        ['tooltip'] = {
            ['titleText'] = 'pepega Clap',
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                },
                ['item'] = {
                },
                ['quest'] = {
                    456,
                },
                ['reputation'] = {
                },
                ['bosskill'] = {
                    'yes',
                },
            },
        },
    },
    [3] = {
        ['x'] = -100,
        ['y'] = -200,
        ['type'] = 1,
        ['preReq'] = {1,},
        ['icon'] = 'interface/icons/inv_misc_rune_01',
        ['tooltip'] = {
            ['titleText'] = 'pepega Clap',
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                },
                ['item'] = {
                    {'Hearthstone', 1},
                },
                ['quest'] = {
                },
                ['reputation'] = {
                },
                ['bosskill'] = {
                    'yes',
                },
            },
        },
    },
    [4] = {
        ['x'] = 0,
        ['y'] = -200,
        ['type'] = 1,
        ['preReq'] = {2,},
        ['icon'] = 'interface/icons/inv_misc_rune_01',
        ['tooltip'] = {
            ['titleText'] = 'pepega Clap',
            ['objectives'] = {
                ['level'] = 2,
                ['spell'] = {
                },
                ['item'] = {
                },
                ['quest'] = {
                },
                ['reputation'] = {
                },
                ['bosskill'] = {
                    'yes',
                },
            },
        },
    },
    [5] = {
        ['x'] = 100,
        ['y'] = -200,
        ['type'] = 1,
        ['preReq'] = {2,},
        ['icon'] = 'interface/icons/inv_misc_rune_01',
        ['tooltip'] = {
            ['titleText'] = 'pepega Clap',
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                    6743,
                },
                ['item'] = {
                },
                ['quest'] = {
                },
                ['reputation'] = {
                },
                ['bosskill'] = {
                    'yes',
                },
            },
        },
    },
    [6] = {
        ['x'] = 200,
        ['y'] = -100,
        ['type'] = 1,
        ['preReq'] = {4,5,},
        ['icon'] = 'interface/icons/inv_misc_rune_01',
        ['tooltip'] = {
            ['titleText'] = 'pepega Clap',
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                },
                ['item'] = {
                },
                ['quest'] = {
                },
                ['reputation'] = {
                    {69, 6},
                },
                ['bosskill'] = {
                    'yes',
                },
            },
        },
    },
    [7] = {
        ['x'] = 300,
        ['y'] = -100,
        ['type'] = 1,
        ['preReq'] = {6,},
        ['icon'] = 'interface/icons/inv_misc_rune_01',
        ['tooltip'] = {
            ['titleText'] = 'pepega Clap',
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                    6743,
                },
                ['item'] = {
                    {'Worn Bow', 1},
                },
                ['quest'] = {
                },
                ['reputation'] = {
                },
                ['bosskill'] = {
                    'yes',
                },
            },
        },
    },
}

nodeDB.newIDs = {
    1,2,3,4,5,6,7
}


nodeDB.dummyIDs = {
    1,2,3,4
}

--[''] = 0,
nodeDB.nodeIDs = {
    1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39
}

nodeDB.debugNodeIDs ={
    1,2,
}

--39 bubbles
