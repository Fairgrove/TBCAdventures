local _, core = ...
core.clusterDB = {}

local clusterDB = core.clusterDB

clusterDB.clusters = {
    [0] = { --Arca
        ['x'] = -306,
        ['y'] = -123,
        ['size'] = 112,
        ['preReq'] = {3,4,65},
        ['pointsTo'] = {5,},
    },
    [1] = { -- Kara
        ['x'] = -104,
        ['y'] = -144,
        ['size'] = 149,
        ['preReq'] = {12,10,9,6,14},
        ['pointsTo'] = {},
    },
    [2] = { --TK
        ['x'] = -292,
        ['y'] = 203,
        ['size'] = 186,
        ['preReq'] = {31,30,28,26,22,18},
        ['pointsTo'] = {},
    },
    [3] = { -- Hyjal
        ['x'] = 344,
        ['y'] = 179,
        ['size'] = 112,
        ['preReq'] = {36,35,34},
        ['pointsTo'] = {37,},
    },
    [4] = { --BT
        ['x'] = 162,
        ['y'] = 291,
        ['size'] = 186,
        ['preReq'] = {42,41,40,39,38},
        ['pointsTo'] = {},
    },
    [5] = { -- SSC
        ['x'] = -90,
        ['y'] = 305,
        ['size'] = 112,
        ['preReq'] = {16,17},
        ['pointsTo'] = {64,},
    },
    [6] = { -- Bonus
        ['x'] = 290,
        ['y'] = -214,
        ['size'] = 233,
        ['preReq'] = {49,50,51,52,53,54,55,56,57,58,59,60},
        ['pointsTo'] = {},
    },
}

clusterDB.clusterIDs = {
    0,1,2,3,4,5,6,
}
