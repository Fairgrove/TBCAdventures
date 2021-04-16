local _, core = ...;
core.nodeDB = {};

local nodeDB = core.nodeDB;

nodeDB.newData = {
    [1] = {
        ['x'] = 0,
        ['y'] = -360,
        ['type'] = 1,
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
        ['x'] = 50,
        ['y'] = -270,
        ['type'] = 1,
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
        ['x'] = 220,
        ['y'] = -220,
        ['type'] = 1,
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
        ['x'] = 160,
        ['y'] = -220,
        ['type'] = 1,
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
        ['x'] = 290,
        ['y'] = -125,
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
        ['x'] = 340,
        ['y'] = -240,
        ['type'] = 1,
        ['preReq'] = {5,},
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
        ['x'] = 160,
        ['y'] = 0,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = 20,
        ['y'] = -50,
        ['type'] = 1,
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
        ['x'] = 340,
        ['y'] = -310,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = 410,
        ['y'] = -310,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = 410,
        ['y'] = -115,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = 410,
        ['y'] = -240,
        ['type'] = 1,
        ['preReq'] = {11,},
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
        ['x'] = 440,
        ['y'] = -420,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = 532,
        ['y'] = -320,
        ['type'] = 1,
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
        ['x'] = 490,
        ['y'] = -100,
        ['type'] = 1,
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
        ['x'] = 450,
        ['y'] = 45,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = 510,
        ['y'] = 80,
        ['type'] = 1,
        ['preReq'] = {15,},
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
        ['x'] = -310,
        ['y'] = -320,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = -355,
        ['y'] = -420,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = -490,
        ['y'] = -360,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = -440,
        ['y'] = -420,
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
        ['x'] = -400,
        ['y'] = -325,
        ['type'] = 1,
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
        ['x'] = -90,
        ['y'] = 30,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = 40,
        ['y'] = 45,
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
        ['x'] = -210,
        ['y'] = -90,
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
        ['x'] = -440,
        ['y'] = -230,
        ['type'] = 1,
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
        ['x'] = -90,
        ['y'] = -145,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = -370,
        ['y'] = -185,
        ['type'] = 1,
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
        ['x'] = -180,
        ['y'] = -195,
        ['type'] = 1,
        ['preReq'] = {27,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "shadowlabs key",
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
        ['x'] = -285,
        ['y'] = -225,
        ['type'] = 1,
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
        ['x'] = -360,
        ['y'] = -260,
        ['type'] = 1,
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
        ['x'] = -320,
        ['y'] = 70,
        ['type'] = 1,
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
        ['x'] = 260,
        ['y'] = 325,
        ['type'] = 1,
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
        ['x'] = 180,
        ['y'] = 160,
        ['type'] = 1,
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
        ['x'] = 100,
        ['y'] = 140,
        ['type'] = 1,
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
        ['x'] = 110,
        ['y'] = 225,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = -160,
        ['y'] = 225,
        ['type'] = 1,
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
        ['x'] = -400,
        ['y'] = 320,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = -420,
        ['y'] = 230,
        ['type'] = 1,
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
        ['x'] = -310,
        ['y'] = 310,
        ['type'] = 1,
        ['preReq'] = {33,},
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
        ['x'] = -360,
        ['y'] = 190,
        ['type'] = 1,
        ['preReq'] = {32,},
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
        ['x'] = -285,
        ['y'] = 230,
        ['type'] = 1,
        ['preReq'] = {37,},
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
        ['x'] = -460,
        ['y'] = 10,
        ['type'] = 1,
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
        ['x'] = -100,
        ['y'] = 390,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = 100,
        ['y'] = 390,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = -250,
        ['y'] = -390,
        ['type'] = 1,
        ['preReq'] = {},
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
        ['x'] = 10,
        ['y'] = -125,
        ['type'] = 1,
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
        ['x'] = -125,
        ['y'] = -260,
        ['type'] = 1,
        ['preReq'] = {},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['tooltip'] = {
            ['titleText'] = "Defeat Magtheridon",
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
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
}
