local _, core = ...;
core.nodeDB = {};

local nodeDB = core.nodeDB;

nodeDB.newData = {
    [1] = {
        ['x'] = -398,
        ['y'] = -282,
        ['type'] = 6,
        ['preReq'] = {},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Start your Adventure!",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 70,
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
        ['x'] = -391,
        ['y'] = -204,
        ['type'] = 9,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Learn Flying",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
    [3] = {
        ['x'] = -264,
        ['y'] = -151,
        ['type'] = 3,
        ['preReq'] = {65,},
        ['icon'] = "interface/icons/Inv_shoulder_47",
        ['lineExcept'] = {65,},
        ['tooltip'] = {
            ['titleText'] = "Normal Mechanar",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
    [4] = {
        ['x'] = -306,
        ['y'] = -73,
        ['type'] = 3,
        ['preReq'] = {65,},
        ['icon'] = "interface/icons/ability_druid_forceofnature",
        ['lineExcept'] = {65,},
        ['tooltip'] = {
            ['titleText'] = "Normal Botanica",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
    [5] = {
        ['x'] = -214,
        ['y'] = -52,
        ['type'] = 1,
        ['preReq'] = {3,4,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {3,4,},
        ['tooltip'] = {
            ['titleText'] = "arcatraz normal key",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
    [6] = {
        ['x'] = -140,
        ['y'] = -87,
        ['type'] = 3,
        ['preReq'] = {5,9,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {9,},
        ['tooltip'] = {
            ['titleText'] = "Arcatraz key fragment",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -221,
        ['y'] = 39,
        ['type'] = 4,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_offhand_draenei_a_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Revered Sha'tar",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -158,
        ['y'] = -6,
        ['type'] = 1,
        ['preReq'] = {7,5,},
        ['icon'] = "interface/icons/inv_misc_key_09",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Gain Access to Heroic Tempest Keep Dungeons",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                },
                ['item'] = {
                    {'30634', 1},
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
        ['x'] = -172,
        ['y'] = -161,
        ['type'] = 5,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/spell_arcane_blast",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "kara intro quest",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                },
                ['item'] = {
                },
                ['quest'] = {
                    9824,9825,9826,9829,
                },
                ['reputation'] = {
                },
                ['bosskill'] = {
                },
            },
        },
    },
    [10] = {
        ['x'] = -37,
        ['y'] = -161,
        ['type'] = 3,
        ['preReq'] = {9,},
        ['icon'] = "interface/icons/Inv_misc_flower_03",
        ['lineExcept'] = {9,},
        ['tooltip'] = {
            ['titleText'] = "streamvault fragment",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 5,
        ['y'] = -55,
        ['type'] = 3,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv-mount_raven_54",
        ['lineExcept'] = {1,},
        ['tooltip'] = {
            ['titleText'] = "shadow lab key in sethekk halls",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                },
                ['item'] = {
                    {'27991', 1},
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
        ['x'] = -66,
        ['y'] = -87,
        ['type'] = 3,
        ['preReq'] = {9,11,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {9,},
        ['tooltip'] = {
            ['titleText'] = "shadow lab fragment",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -58,
        ['y'] = -261,
        ['type'] = 5,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "CoT entry quest",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -104,
        ['y'] = -211,
        ['type'] = 3,
        ['preReq'] = {13,},
        ['icon'] = "interface/icons/race_orc_male",
        ['lineExcept'] = {9,},
        ['tooltip'] = {
            ['titleText'] = "normal Escape from durnholde",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -104,
        ['y'] = -144,
        ['type'] = 2,
        ['preReq'] = {14,12,10,9,6,},
        ['icon'] = "interface/icons/inv_staff_medivh",
        ['lineExcept'] = {14,12,10,9,6,},
        ['tooltip'] = {
            ['titleText'] = "Karazan key",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -143,
        ['y'] = 305,
        ['type'] = 8,
        ['preReq'] = {64,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {64,},
        ['tooltip'] = {
            ['titleText'] = "gruul fragment",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -37,
        ['y'] = 305,
        ['type'] = 8,
        ['preReq'] = {15,64,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {15,64,},
        ['tooltip'] = {
            ['titleText'] = "nightbane fragment",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -420,
        ['y'] = 124,
        ['type'] = 5,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {1,},
        ['tooltip'] = {
            ['titleText'] = "The Cipher of Damnation questline",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -476,
        ['y'] = 163,
        ['type'] = 4,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Revered Honor Hold",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -476,
        ['y'] = 256,
        ['type'] = 1,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {1,},
        ['tooltip'] = {
            ['titleText'] = "Shattered halls normal mode key",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -419,
        ['y'] = 210,
        ['type'] = 1,
        ['preReq'] = {20,19,},
        ['icon'] = "interface/icons/inv_misc_key_13",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Gain access to Heroic Hellfire Citadel",
            ['flavorText'] = '"Unlocks Hellfire Ramparts, The Blood Furnace and The Shattered Halls"',
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                },
                ['item'] = {
                    {'30622', 1},
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
        ['x'] = -370,
        ['y'] = 167,
        ['type'] = 3,
        ['preReq'] = {21,18,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Shattered halls HC",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -292,
        ['y'] = 383,
        ['type'] = 4,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/ability_druid_naturalperfection",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Revered Cenarion Expedition",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -242,
        ['y'] = 337,
        ['type'] = 1,
        ['preReq'] = {23,},
        ['icon'] = "interface/icons/inv_misc_key_13",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Gain access to Heroic Coilfang Reservoir",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                },
                ['item'] = {
                    {'30623', 1},
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
        ['x'] = -342,
        ['y'] = 337,
        ['type'] = 1,
        ['preReq'] = {23,},
        ['icon'] = "interface/icons/inv_misc_key_13",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Gain access to Heroic Coilfang Reservoir",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                },
                ['item'] = {
                    {'30623', 1},
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
        ['x'] = -342,
        ['y'] = 274,
        ['type'] = 3,
        ['preReq'] = {22,25,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {22,},
        ['tooltip'] = {
            ['titleText'] = "HC Steam Vaults",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -107,
        ['y'] = 167,
        ['type'] = 4,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Revered Lower city",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -242,
        ['y'] = 274,
        ['type'] = 3,
        ['preReq'] = {26,8,},
        ['icon'] = "interface/icons/spell_shadow_shadowpower",
        ['lineExcept'] = {26,8,},
        ['tooltip'] = {
            ['titleText'] = "HC arcatraz",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -161,
        ['y'] = 124,
        ['type'] = 1,
        ['preReq'] = {27,},
        ['icon'] = "interface/icons/inv_misc_key_11",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Gain access to Heroic Auchindoun",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                },
                ['item'] = {
                    {'30633', 1},
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
        ['x'] = -214,
        ['y'] = 167,
        ['type'] = 3,
        ['preReq'] = {29,28,},
        ['icon'] = "interface/icons/spell_shadow_shadesofdarkness",
        ['lineExcept'] = {28,},
        ['tooltip'] = {
            ['titleText'] = "HC Shadow labs",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -289,
        ['y'] = 118,
        ['type'] = 8,
        ['preReq'] = {30,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {30,},
        ['tooltip'] = {
            ['titleText'] = "Magtheridon fragment",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -292,
        ['y'] = 203,
        ['type'] = 2,
        ['preReq'] = {31,30,28,26,22,18,},
        ['icon'] = "interface/icons/inv_misc_summerfest_brazierorange",
        ['lineExcept'] = {31,30,28,26,22,18,},
        ['tooltip'] = {
            ['titleText'] = "tempest keep key",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -90,
        ['y'] = 305,
        ['type'] = 2,
        ['preReq'] = {16,17,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {16,17,},
        ['tooltip'] = {
            ['titleText'] = "ssc key",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 387,
        ['y'] = 143,
        ['type'] = 8,
        ['preReq'] = {33,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {33,},
        ['tooltip'] = {
            ['titleText'] = "ssc fragment",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 302,
        ['y'] = 143,
        ['type'] = 8,
        ['preReq'] = {32,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {32,},
        ['tooltip'] = {
            ['titleText'] = "tempest key fragment",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 302,
        ['y'] = 215,
        ['type'] = 4,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/classic_inv_misc_dust_06",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Friendly Scale of the sands",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 344,
        ['y'] = 180,
        ['type'] = 2,
        ['preReq'] = {36,35,34,},
        ['icon'] = "interface/icons/classic_temp",
        ['lineExcept'] = {36,35,34,},
        ['tooltip'] = {
            ['titleText'] = "Mount Hyjal Key",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 73,
        ['y'] = 281,
        ['type'] = 5,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {1,},
        ['tooltip'] = {
            ['titleText'] = "BT intro quest",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 109,
        ['y'] = 362,
        ['type'] = 3,
        ['preReq'] = {38,8,},
        ['icon'] = "interface/icons/spell_shadow_shadowpower",
        ['lineExcept'] = {38,8,},
        ['tooltip'] = {
            ['titleText'] = "revisit Arcatraz",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 216,
        ['y'] = 362,
        ['type'] = 8,
        ['preReq'] = {33,39,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {33,39,},
        ['tooltip'] = {
            ['titleText'] = "SSC quest",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 251,
        ['y'] = 281,
        ['type'] = 8,
        ['preReq'] = {32,40,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {32,40,},
        ['tooltip'] = {
            ['titleText'] = "Tempest keep fragment",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 162,
        ['y'] = 206,
        ['type'] = 8,
        ['preReq'] = {37,41,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {37,41,},
        ['tooltip'] = {
            ['titleText'] = "Hyjal Fragment",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 162,
        ['y'] = 292,
        ['type'] = 2,
        ['preReq'] = {42,41,40,39,38,},
        ['icon'] = "interface/icons/Inv_weapon_glave_01",
        ['lineExcept'] = {42,41,40,39,38,},
        ['tooltip'] = {
            ['titleText'] = "Black temple key",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 44,
        ['y'] = 78,
        ['type'] = 2,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_bijou_purple",
        ['lineExcept'] = {1,},
        ['tooltip'] = {
            ['titleText'] = "Zul'Aman",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 180,
        ['y'] = 21,
        ['type'] = 2,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_weapon_bow_39",
        ['lineExcept'] = {1,},
        ['tooltip'] = {
            ['titleText'] = "Sunwell",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -458,
        ['y'] = -363,
        ['type'] = 2,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_bone_03",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Gruuls' lair",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -458,
        ['y'] = -144,
        ['type'] = 2,
        ['preReq'] = {2,},
        ['icon'] = "interface/icons/Ability_warlock_avoidance",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "kazzak",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = -296,
        ['y'] = -363,
        ['type'] = 2,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_bag_enchantedrunecloth",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Defeat Magtheridon",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 192,
        ['y'] = -161,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_apexis_crystal",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Exalted Ogri'la",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 184,
        ['y'] = -214,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Exalted The Consortium",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 290,
        ['y'] = -108,
        ['type'] = 7,
        ['preReq'] = {1,27,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Exalted Lower City",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 343,
        ['y'] = -116,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/ability_mount_netherdrakepurple",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Exalted Netherwing",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 388,
        ['y'] = -161,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Exalted Al'dor",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 397,
        ['y'] = -205,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Exalted Sporeggar",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 397,
        ['y'] = -258,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Exalted Kurenei",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 370,
        ['y'] = -294,
        ['type'] = 7,
        ['preReq'] = {1,36,},
        ['icon'] = "interface/icons/classic_inv_misc_dust_06",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Exalted Scale of the sands",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 325,
        ['y'] = -316,
        ['type'] = 7,
        ['preReq'] = {1,19,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Exalted Honor Hold",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 281,
        ['y'] = -325,
        ['type'] = 7,
        ['preReq'] = {1,23,},
        ['icon'] = "interface/icons/ability_druid_naturalperfection",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Exalted Cenarion Expedition",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 237,
        ['y'] = -307,
        ['type'] = 7,
        ['preReq'] = {1,},
        ['icon'] = "interface/icons/inv_jewelry_ring_62",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Exalted The Violet Eye",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 192,
        ['y'] = -272,
        ['type'] = 7,
        ['preReq'] = {1,27,},
        ['icon'] = "interface/icons/inv_offhand_draenei_a_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Exalted Sha'tar",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 382,
        ['y'] = 219,
        ['type'] = 4,
        ['preReq'] = {13,},
        ['icon'] = "interface/icons/inv_misc_head_dragon_bronze",
        ['lineExcept'] = {13,},
        ['tooltip'] = {
            ['titleText'] = "Revered Keepers of Time",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
        ['x'] = 436,
        ['y'] = 267,
        ['type'] = 1,
        ['preReq'] = {61,},
        ['icon'] = "interface/icons/inv_misc_key_04",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Gain access to Heroic Caverns of Time Dungeons",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
                ['spell'] = {
                },
                ['item'] = {
                    {'30635', 1},
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
        ['x'] = 237,
        ['y'] = -116,
        ['type'] = 7,
        ['preReq'] = {61,},
        ['icon'] = "interface/icons/inv_misc_head_dragon_bronze",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Exalted Keepers of Time",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
    [64] = {
        ['x'] = -179,
        ['y'] = 383,
        ['type'] = 3,
        ['preReq'] = {24,},
        ['icon'] = "interface/icons/inv_misc_rune_01",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Slave Pens HC",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
    [65] = {
        ['x'] = -349,
        ['y'] = -151,
        ['type'] = 5,
        ['preReq'] = {2,},
        ['icon'] = "interface/icons/inv_misc_wartornscrap_leather",
        ['lineExcept'] = {},
        ['tooltip'] = {
            ['titleText'] = "Arcatraz intro Quest",
            ['flavorText'] = '',
            ['objectives'] = {
                ['level'] = 0,
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
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 
}
