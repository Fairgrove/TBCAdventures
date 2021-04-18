local _, core = ...
core.clusterDB = {}

local clusterDB = core.clusterDB

clusterDB.clusters = {
    [0] = {
        ['size'] = 130,
        ['preReq'] = {3,4,65},
        ['pointsTo'] = {5,},
        ['icon'] = "interface/icons/ability_warrior_savageblow",
    },
    [1] = {
        ['size'] = 170,
        ['preReq'] = {12,10,9,6},
        ['pointsTo'] = {15,},
        ['icon'] = "interface/icons/ability_warrior_savageblow",
    },
    [2] = {
        ['size'] = 230,
        ['preReq'] = {31,30,28,26,22,18},
        ['pointsTo'] = {32,},
        ['icon'] = "interface/icons/ability_warrior_savageblow",
    },
    [3] = {
        ['size'] = 180,
        ['preReq'] = {36,35,34},
        ['pointsTo'] = {37,},
        ['icon'] = "interface/icons/ability_warrior_savageblow",
    },
    [4] = {
        ['size'] = 230,
        ['preReq'] = {42,41,40,39,38},
        ['pointsTo'] = {43,},
        ['icon'] = "interface/icons/ability_warrior_savageblow",
    },
    [5] = {
        ['size'] = 130,
        ['preReq'] = {16,17},
        ['pointsTo'] = {33,},
        ['icon'] = "interface/icons/ability_warrior_savageblow",
    },
}

clusterDB.clusterIDs = {
    0,1,2,3,4,5,
}