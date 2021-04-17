local _, core = ...;
core.nodeDB = {};

local nodeDB = core.nodeDB;

nodeDB.newData = {
    [1] = {
        ['x'] = 0,
        ['y'] = -342,
        ['type'] = 6,
        ['preReq'] = {},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Start your Adventure!",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [2] = {
        ['x'] = 47,
        ['y'] = -256,
        ['type'] = 9,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Learn Flying",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 1,
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
                },
            },
        },
    },
    [3] = {
        ['x'] = 209,
        ['y'] = -209,
        ['type'] = 5,
        ['preReq'] = {2,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Normal Mechanar",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 1,
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
                },
            },
        },
    },
    [4] = {
        ['x'] = 152,
        ['y'] = -209,
        ['type'] = 5,
        ['preReq'] = {2,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Normal Botanica",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 1,
                ['spell'] = {
                },
                ['item'] = {
                },
                ['quest'] = {
                },
                ['reputation'] = {
                    {69, 5},
                },
                ['bosskill'] = {
                },
            },
        },
    },
    [5] = {
        ['x'] = 275,
        ['y'] = -118,
        ['type'] = 1,
        ['preReq'] = {3,4,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "arcatraz normal key",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 1,
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
                },
            },
        },
    },
    [6] = {
        ['x'] = 323,
        ['y'] = -228,
        ['type'] = 5,
        ['preReq'] = {5,9,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Arcatraz key fragment",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [7] = {
        ['x'] = 152,
        ['y'] = 0,
        ['type'] = 4,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Revered Sha'tar",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [8] = {
        ['x'] = 19,
        ['y'] = -47,
        ['type'] = 5,
        ['preReq'] = {7,5,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Arcatraz HC key",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [9] = {
        ['x'] = 199,
        ['y'] = -332,
        ['type'] = 1,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "kara into quest",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [10] = {
        ['x'] = 356,
        ['y'] = -294,
        ['type'] = 5,
        ['preReq'] = {9,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "streamvault fragment",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [11] = {
        ['x'] = 389,
        ['y'] = -109,
        ['type'] = 5,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "shadow lab key in sethekk halls",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [12] = {
        ['x'] = 389,
        ['y'] = -228,
        ['type'] = 5,
        ['preReq'] = {9,11,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "shadow lab fragment",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [13] = {
        ['x'] = 418,
        ['y'] = -399,
        ['type'] = 1,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "CoT entry quest",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [14] = {
        ['x'] = 505,
        ['y'] = -304,
        ['type'] = 5,
        ['preReq'] = {13,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "normal Escape from durnholde",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [15] = {
        ['x'] = 465,
        ['y'] = -95,
        ['type'] = 2,
        ['preReq'] = {14,12,10,9,6,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Karazan key",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [16] = {
        ['x'] = 427,
        ['y'] = 42,
        ['type'] = 8,
        ['preReq'] = {24,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "gruul fragment",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [17] = {
        ['x'] = 484,
        ['y'] = 76,
        ['type'] = 8,
        ['preReq'] = {15,24,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "nightbane fragment",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [18] = {
        ['x'] = -294,
        ['y'] = -304,
        ['type'] = 1,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "The Cipher of Damnation questline",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [19] = {
        ['x'] = -337,
        ['y'] = -399,
        ['type'] = 4,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Revered Honor Hold",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [20] = {
        ['x'] = -465,
        ['y'] = -342,
        ['type'] = 1,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Shattered halls normal mode key",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [21] = {
        ['x'] = -418,
        ['y'] = -399,
        ['type'] = 1,
        ['preReq'] = {20,19,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "HC shattered halls key",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [22] = {
        ['x'] = -380,
        ['y'] = -308,
        ['type'] = 3,
        ['preReq'] = {21,18,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Shattered halls HC",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [23] = {
        ['x'] = -85,
        ['y'] = 28,
        ['type'] = 4,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Revered Cenarion Expedition",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [24] = {
        ['x'] = 38,
        ['y'] = 42,
        ['type'] = 1,
        ['preReq'] = {23,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Slave Pens key",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [25] = {
        ['x'] = -199,
        ['y'] = -85,
        ['type'] = 1,
        ['preReq'] = {23,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Steam Vaults key",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [26] = {
        ['x'] = -418,
        ['y'] = -218,
        ['type'] = 3,
        ['preReq'] = {22,25,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "HC steam vaults",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [27] = {
        ['x'] = -85,
        ['y'] = -137,
        ['type'] = 4,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Revered Lower city",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [28] = {
        ['x'] = -351,
        ['y'] = -175,
        ['type'] = 3,
        ['preReq'] = {26,8,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "HC arcatraz",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [29] = {
        ['x'] = -171,
        ['y'] = -185,
        ['type'] = 1,
        ['preReq'] = {27,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "HC shadowlabs key",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [30] = {
        ['x'] = -270,
        ['y'] = -213,
        ['type'] = 3,
        ['preReq'] = {29,28,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Shadow Labs HC",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [31] = {
        ['x'] = -342,
        ['y'] = -247,
        ['type'] = 8,
        ['preReq'] = {30,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Magtheridon fragment",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [32] = {
        ['x'] = -304,
        ['y'] = 66,
        ['type'] = 2,
        ['preReq'] = {31,30,28,26,22,18,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "tempest keep key",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [33] = {
        ['x'] = 247,
        ['y'] = 308,
        ['type'] = 2,
        ['preReq'] = {16,17,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "ssc key",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [34] = {
        ['x'] = 171,
        ['y'] = 152,
        ['type'] = 8,
        ['preReq'] = {33,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "ssc fragment",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [35] = {
        ['x'] = 95,
        ['y'] = 133,
        ['type'] = 8,
        ['preReq'] = {32,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "tempest key fragment",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [36] = {
        ['x'] = 104,
        ['y'] = 213,
        ['type'] = 4,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Friendly Scale of the sands",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [37] = {
        ['x'] = -152,
        ['y'] = 213,
        ['type'] = 2,
        ['preReq'] = {36,35,36,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Mount Hyjal Key",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [38] = {
        ['x'] = -413,
        ['y'] = 237,
        ['type'] = 1,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "BT intro quest",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [39] = {
        ['x'] = -365,
        ['y'] = 308,
        ['type'] = 3,
        ['preReq'] = {38,8,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "revisit Arcatraz",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [40] = {
        ['x'] = -294,
        ['y'] = 294,
        ['type'] = 8,
        ['preReq'] = {33,39,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "SSC quest",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [41] = {
        ['x'] = -342,
        ['y'] = 180,
        ['type'] = 8,
        ['preReq'] = {32,40,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Tempest keep fragment",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [42] = {
        ['x'] = -270,
        ['y'] = 218,
        ['type'] = 8,
        ['preReq'] = {37,41,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Hyjal Fragment",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [43] = {
        ['x'] = -437,
        ['y'] = 9,
        ['type'] = 2,
        ['preReq'] = {42,41,40,39,38,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Black temple key",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [44] = {
        ['x'] = -95,
        ['y'] = 370,
        ['type'] = 2,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Zul'Aman",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [45] = {
        ['x'] = 95,
        ['y'] = 370,
        ['type'] = 2,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Sunwell",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [46] = {
        ['x'] = -237,
        ['y'] = -370,
        ['type'] = 2,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Gruuls' lair",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [47] = {
        ['x'] = 9,
        ['y'] = -118,
        ['type'] = 2,
        ['preReq'] = {2,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "kazzak",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [48] = {
        ['x'] = -118,
        ['y'] = -247,
        ['type'] = 2,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Defeat Magtheridon",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 8,
                ['spell'] = {
                },
                ['item'] = {
                },
                ['quest'] = {
                },
                ['reputation'] = {
                },
                ['bosskill'] = {
                },
            },
        },
    },
    [49] = {
        ['x'] = 405,
        ['y'] = 365,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Exalted Ogri'la",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [50] = {
        ['x'] = 472,
        ['y'] = 351,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Exalted The Consortium",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [51] = {
        ['x'] = 529,
        ['y'] = 365,
        ['type'] = 7,
        ['preReq'] = {1,27,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Exalted Lower City",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [52] = {
        ['x'] = 377,
        ['y'] = 313,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Exalted Netherwing",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [53] = {
        ['x'] = 427,
        ['y'] = 294,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Exalted Al'dor",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [54] = {
        ['x'] = 472,
        ['y'] = 285,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Exalted Sporeggar",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [55] = {
        ['x'] = 514,
        ['y'] = 304,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Exalted Kurenei",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [56] = {
        ['x'] = 394,
        ['y'] = 256,
        ['type'] = 7,
        ['preReq'] = {1,36,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Exalted Scale of the sands",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [57] = {
        ['x'] = 465,
        ['y'] = 228,
        ['type'] = 7,
        ['preReq'] = {1,19,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Exalted Honor Hold",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [58] = {
        ['x'] = 524,
        ['y'] = 247,
        ['type'] = 7,
        ['preReq'] = {1,23,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Exalted Cenarion Expedition",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [59] = {
        ['x'] = 427,
        ['y'] = 199,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Exalted The Violet Eye",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [60] = {
        ['x'] = 495,
        ['y'] = 190,
        ['type'] = 7,
        ['preReq'] = {1,27,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Exalted Sha'tar",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [61] = {
        ['x'] = 323,
        ['y'] = -408,
        ['type'] = 7,
        ['preReq'] = {13,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Revered Keepers of Time",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [62] = {
        ['x'] = 209,
        ['y'] = -408,
        ['type'] = 7,
        ['preReq'] = {61,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "CoT HC keys",
            ['flavorText'] = '',
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
                },
            },
        },
    },
    [63] = {
        ['x'] = 465,
        ['y'] = 152,
        ['type'] = 7,
        ['preReq'] = {61,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Exalted Keepers of Time",
            ['flavorText'] = '',
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
                },
            },
        },
    },
}

nodeDB.newIDs = {
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 
}
