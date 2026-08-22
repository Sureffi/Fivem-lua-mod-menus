---@diagnostic disable: undefined-global, unused-function




local Keys = {
	['ESC'] = 322, ['F1'] = 288, ['F2'] = 289, ['F3'] = 170, ['F5'] = 166, ['F6'] = 167, ['F7'] = 168, ['F8'] = 169, ['F9'] = 56, ['F10'] = 57,
	['~'] = 243, ['1'] = 157, ['2'] = 158, ['3'] = 160, ['4'] = 164, ['5'] = 165, ['6'] = 159, ['7'] = 161, ['8'] = 162, ['9'] = 163, ['-'] = 84, ['='] = 83, ['BACKSPACE'] = 194,
	['TAB'] = 37, ['Q'] = 44, ['W'] = 32, ['E'] = 38, ['R'] = 45, ['T'] = 245, ['Y'] = 246, ['U'] = 303, ['P'] = 199, ['['] = 39, [']'] = 40, ['ENTER'] = 215,
	['CAPS'] = 137, ['A'] = 34, ['S'] = 8, ['D'] = 9, ['F'] = 23, ['G'] = 47, ['H'] = 74, ['K'] = 311, ['L'] = 182,
	['LEFTSHIFT'] = 21, ['Z'] = 20, ['X'] = 73, ['C'] = 26, ['V'] = 0, ['B'] = 29, ['N'] = 249, ['M'] = 244, [','] = 82, ['.'] = 81,
	['LEFTCTRL'] = 36, ['LEFTALT'] = 19, ['SPACE'] = 22, ['RIGHTCTRL'] = 70,
	['HOME'] = 213, ['PAGEUP'] = 10, ['PAGEDOWN'] = 11, ['DELETE'] = 178,
	['LEFT'] = 174, ['RIGHT'] = 175, ['TOP'] = 27, ['UP'] = 172, ['DOWN'] = 173,
	['NENTER'] = 201, ['N4'] = 108, ['N5'] = 60, ['N6'] = 107, ['N+'] = 96, ['N-'] = 97, ['N7'] = 117, ['N8'] = 61, ['N9'] = 118,
	['MOUSE1'] = 24, ["MOUSE2"] = 70
}

local bone_check = {{31086, "SKEL_HEAD"}, {0, "SKEL_ROOT"}, {22711, "SKEL_L_Forearm"}, {28252, "SKEL_R_Forearm"}, {45509, "SKEL_L_UpperArm"}, {40269, "SKEL_R_UpperArm"}, {58271, "SKEL_L_Thigh"}, {51826, "SKEL_R_Thigh"}, {24816, "SKEL_Spine1"}, {24817, "SKEL_Spine2"}, {24818, "SKEL_Spine3"}, {14201, "SKEL_L_Foot"}, {52301, "SKEL_R_Foot"}}

local weapons = {
    Melee = {
        BaseballBat = {
            id = "weapon_bat", name = "Baseball Bat", bInfAmmo = false, mods = {}
        }, BrokenBottle = {
            id = "weapon_bottle", name = "Broken Bottle", bInfAmmo = false, mods = {}
        }, Crowbar = {
            id = "weapon_Crowbar", name = "Crowbar", bInfAmmo = false, mods = {}
        }, Flashlight = {
            id = "weapon_flashlight", name = "Flashlight", bInfAmmo = false, mods = {}
        }, GolfClub = {
            id = "weapon_golfclub", name = "Golf Club", bInfAmmo = false, mods = {}
        }, BrassKnuckles = {
            id = "weapon_knuckle", name = "Brass Knuckles", bInfAmmo = false, mods = {}
        }, Knife = {
            id = "weapon_knife", name = "Knife", bInfAmmo = false, mods = {}
        }, Machete = {
            id = "weapon_machete", name = "Machete", bInfAmmo = false, mods = {}
        }, Switchblade = {
            id = "weapon_switchblade", name = "Switchblade", bInfAmmo = false, mods = {}
        }, Nightstick = {
            id = "weapon_nightstick", name = "Nightstick", bInfAmmo = false, mods = {}
        }, BattleAxe = {
            id = "weapon_battleaxe", name = "Battle Axe", bInfAmmo = false, mods = {}
        }
    }, Handguns = {
        Pistol = {
            id = "weapon_pistol", name = "Pistol", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_PISTOL_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_PISTOL_CLIP_02"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_PI_SUPP_02"
                    }
                }
            }
        }, PistolMK2 = {
            id = "weapon_pistol_mk2", name = "Pistol MK 2", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_PISTOL_MK2_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_PISTOL_MK2_CLIP_02"
                    }, {
                        name = "Tracer Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_TRACER"
                    }, {
                        name = "Incendiary Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_INCENDIARY"
                    }, {
                        name = "Hollow Point Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_HOLLOWPOINT"
                    }, {
                        name = "FMJ Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_FMJ"
                    }
                }, Sights = {
                    {
                        name = "Mounted Scope", id = "COMPONENT_AT_PI_RAIL"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_PI_FLSH_02"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Compensator", id = "COMPONENT_AT_PI_COMP"
                    }, {
                        name = "Suppessor", id = "COMPONENT_AT_PI_SUPP_02"
                    }
                }
            }
        }, CombatPistol = {
            id = "weapon_combatpistol", name = "Combat Pistol", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_COMBATPISTOL_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_COMBATPISTOL_CLIP_02"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_PI_SUPP"
                    }
                }
            }
        }, APPistol = {
            id = "weapon_appistol", name = "AP Pistol", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_APPISTOL_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_APPISTOL_CLIP_02"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_PI_SUPP"
                    }
                }
            }
        }, StunGun = {
            id = "weapon_stungun", name = "Stun Gun", bInfAmmo = false, mods = {}
        }, Pistol50 = {
            id = "weapon_pistol50", name = "Pistol .50", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_PISTOL50_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_PISTOL50_CLIP_02"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_PI_SUPP_02"
                    }
                }
            }
        }, SNSPistol = {
            id = "weapon_snspistol", name = "SNS Pistol", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_SNSPISTOL_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_SNSPISTOL_CLIP_02"
                    }
                }
            }
        }, SNSPistolMkII = {
            id = "weapon_snspistol_mk2", name = "SNS Pistol Mk II", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_SNSPISTOL_MK2_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_SNSPISTOL_MK2_CLIP_02"
                    }, {
                        name = "Tracer Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_TRACER"
                    }, {
                        name = "Incendiary Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY"
                    }, {
                        name = "Hollow Point Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT"
                    }, {
                        name = "FMJ Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_FMJ"
                    }
                }, Sights = {
                    {
                        name = "Mounted Scope", id = "COMPONENT_AT_PI_RAIL_02"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_PI_FLSH_03"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Compensator", id = "COMPONENT_AT_PI_COMP_02"
                    }, {
                        name = "Suppressor", id = "COMPONENT_AT_PI_SUPP_02"
                    }
                }
            }
        }, HeavyPistol = {
            id = "weapon_heavypistol", name = "Heavy Pistol", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_HEAVYPISTOL_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_HEAVYPISTOL_CLIP_02"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_PI_SUPP"
                    }
                }
            }
        }, VintagePistol = {
            id = "weapon_vintagepistol", name = "Vintage Pistol", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_VINTAGEPISTOL_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_VINTAGEPISTOL_CLIP_02"
                    }
                }, BarrelAttachments = {
                    {
                        "Suppressor", id = "COMPONENT_AT_PI_SUPP"
                    }
                }
            }
        }, FlareGun = {
            id = "weapon_flaregun", name = "Flare Gun", bInfAmmo = false, mods = {}
        }, MarksmanPistol = {
            id = "weapon_marksmanpistol", name = "Marksman Pistol", bInfAmmo = false, mods = {}
        }, HeavyRevolver = {
            id = "weapon_revolver", name = "Heavy Revolver", bInfAmmo = false, mods = {}
        }, HeavyRevolverMkII = {
            id = "weapon_revolver_mk2", name = "Heavy Revolver Mk II", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_01"
                    }, {
                        name = "Tracer Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_TRACER"
                    }, {
                        name = "Incendiary Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY"
                    }, {
                        name = "Hollow Point Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT"
                    }, {
                        name = "FMJ Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_FMJ"
                    }
                }, Sights = {
                    {
                        name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
                    }, {
                        name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Compensator", id = "COMPONENT_AT_PI_COMP_03"
                    }
                }
            }
        }, DoubleActionRevolver = {
            id = "weapon_doubleaction", name = "Double Action Revolver", bInfAmmo = false, mods = {}
        }, UpnAtomizer = {
            id = "weapon_raypistol", name = "Up-n-Atomizer", bInfAmmo = false, mods = {}
        }
    }, SMG = {
        MicroSMG = {
            id = "weapon_microsmg", name = "Micro SMG", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_MICROSMG_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_MICROSMG_CLIP_02"
                    }
                }, Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_MACRO"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
                    }
                }
            }
        }, SMG = {
            id = "weapon_smg", name = "SMG", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_SMG_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_SMG_CLIP_02"
                    }, {
                        name = "Drum Magazine", id = "COMPONENT_SMG_CLIP_03"
                    }
                }, Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_MACRO_02"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_PI_SUPP"
                    }
                }
            }
        }, SMGMkII = {
            id = "weapon_smg_mk2", name = "SMG Mk II", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_SMG_MK2_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_SMG_MK2_CLIP_02"
                    }, {
                        name = "Tracer Rounds", id = "COMPONENT_SMG_MK2_CLIP_TRACER"
                    }, {
                        name = "Incendiary Rounds", id = "COMPONENT_SMG_MK2_CLIP_INCENDIARY"
                    }, {
                        name = "Hollow Point Rounds", id = "COMPONENT_SMG_MK2_CLIP_HOLLOWPOINT"
                    }, {
                        name = "FMJ Rounds", id = "COMPONENT_SMG_MK2_CLIP_FMJ"
                    }
                }, Sights = {
                    {
                        name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS_SMG"
                    }, {
                        name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2"
                    }, {
                        name = "Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_SMG_MK2"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, Barrel = {
                    {
                        name = "Default", id = "COMPONENT_AT_SB_BARREL_01"
                    }, {
                        name = "Heavy", id = "COMPONENT_AT_SB_BARREL_02"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_PI_SUPP"
                    }, {
                        name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
                    }, {
                        name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
                    }, {
                        name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
                    }, {
                        name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
                    }, {
                        name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
                    }, {
                        name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
                    }, {
                        name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
                    }
                }
            }
        }, AssaultSMG = {
            id = "weapon_assaultsmg", name = "Assault SMG", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_ASSAULTSMG_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_ASSAULTSMG_CLIP_02"
                    }
                }, Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_MACRO"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
                    }
                }
            }
        }, CombatPDW = {
            id = "weapon_combatpdw", name = "Combat PDW", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_COMBATPDW_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_COMBATPDW_CLIP_02"
                    }, {
                        name = "Drum Magazine", id = "COMPONENT_COMBATPDW_CLIP_03"
                    }
                }, Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_SMALL"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
                    }
                }
            }
        }, MachinePistol = {
            id = "weapon_machinepistol", name = "Machine Pistol ", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_02"
                    }, {
                        name = "Drum Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_03"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_PI_SUPP"
                    }
                }
            }
        }, MiniSMG = {
            id = "weapon_minismg", name = "Mini SMG", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_MINISMG_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_MINISMG_CLIP_02"
                    }
                }
            }
        }, UnholyHellbringer = {
            id = "weapon_raycarbine", name = "Unholy Hellbringer", bInfAmmo = false, mods = {}
        }
    }, Shotguns = {
        PumpShotgun = {
            id = "weapon_pumpshotgun", name = "Pump Shotgun", bInfAmmo = false, mods = {
                Flashlight = {
                    {
                        "name = Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_SR_SUPP"
                    }
                }
            }
        }, PumpShotgunMkII = {
            id = "weapon_pumpshotgun_mk2", name = "Pump Shotgun Mk II", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_01"
                    }, {
                        name = "Dragon Breath Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY"
                    }, {
                        name = "Steel Buckshot Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_ARMORPIERCING"
                    }, {
                        name = "Flechette Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT"
                    }, {
                        name = "Explosive Slugs", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE"
                    }
                }, Sights = {
                    {
                        name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
                    }, {
                        name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
                    }, {
                        name = "Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_SR_SUPP_03"
                    }, {
                        name = "Squared Muzzle Brake", id = "COMPONENT_AT_MUZZLE_08"
                    }
                }
            }
        }, SawedOffShotgun = {
            id = "weapon_sawnoffshotgun", name = "Sawed-Off Shotgun", bInfAmmo = false, mods = {}
        }, AssaultShotgun = {
            id = "weapon_assaultshotgun", name = "Assault Shotgun", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_ASSAULTSHOTGUN_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_ASSAULTSHOTGUN_CLIP_02"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
                    }
                }
            }
        }, BullpupShotgun = {
            id = "weapon_bullpupshotgun", name = "Bullpup Shotgun", bInfAmmo = false, mods = {
                Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
                    }
                }
            }
        }, Musket = {
            id = "weapon_musket", name = "Musket", bInfAmmo = false, mods = {}
        }, HeavyShotgun = {
            id = "weapon_heavyshotgun", name = "Heavy Shotgun", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_02"
                    }, {
                        name = "Drum Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_02"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
                    }
                }
            }
        }, DoubleBarrelShotgun = {
            id = "weapon_dbshotgun", name = "Double Barrel Shotgun", bInfAmmo = false, mods = {}
        }, SweeperShotgun = {
            id = "weapon_autoshotgun", name = "Sweeper Shotgun", bInfAmmo = false, mods = {}
        }
    }, AssaultRifles = {
        AssaultRifle = {
            id = "weapon_assaultrifle", name = "Assault Rifle", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_02"
                    }, {
                        name = "Drum Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_03"
                    }
                }, Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_MACRO"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
                    }
                }
            }
        }, AssaultRifleMkII = {
            id = "weapon_assaultrifle_mk2", name = "Assault Rifle Mk II", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_02"
                    }, {
                        name = "Tracer Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_TRACER"
                    }, {
                        name = "Incendiary Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_INCENDIARY"
                    }, {
                        name = "Hollow Point Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_ARMORPIERCING"
                    }, {
                        name = "FMJ Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_FMJ"
                    }
                }, Sights = {
                    {
                        name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
                    }, {
                        name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
                    }, {
                        name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, Barrel = {
                    {
                        name = "Default", id = "COMPONENT_AT_AR_BARREL_01"
                    }, {
                        name = "Heavy", id = "COMPONENT_AT_AR_BARREL_0"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
                    }, {
                        name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
                    }, {
                        name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
                    }, {
                        name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
                    }, {
                        name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
                    }, {
                        name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
                    }, {
                        name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
                    }, {
                        name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
                    }
                }
            }
        }, CarbineRifle = {
            id = "weapon_carbinerifle", name = "Carbine Rifle", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_02"
                    }, {
                        name = "Box Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_03"
                    }
                }, Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
                    }
                }
            }
        }, CarbineRifleMkII = {
            id = "weapon_carbinerifle_mk2", name = "Carbine Rifle Mk II ", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_02"
                    }, {
                        name = "Tracer Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_TRACER"
                    }, {
                        name = "Incendiary Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY"
                    }, {
                        name = "Hollow Point Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING"
                    }, {
                        name = "FMJ Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ"
                    }
                }, Sights = {
                    {
                        name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
                    }, {
                        name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
                    }, {
                        name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, Barrel = {
                    {
                        name = "Default", id = "COMPONENT_AT_CR_BARREL_01"
                    }, {
                        name = "Heavy", id = "COMPONENT_AT_CR_BARREL_02"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
                    }, {
                        name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
                    }, {
                        name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
                    }, {
                        name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
                    }, {
                        name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
                    }, {
                        name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
                    }, {
                        name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
                    }, {
                        name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
                    }
                }
            }
        }, AdvancedRifle = {
            id = "weapon_advancedrifle", name = "Advanced Rifle ", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_ADVANCEDRIFLE_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_ADVANCEDRIFLE_CLIP_02"
                    }
                }, Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_SMALL"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
                    }
                }
            }
        }, SpecialCarbine = {
            id = "weapon_specialcarbine", name = "Special Carbine", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_02"
                    }, {
                        name = "Drum Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_03"
                    }
                }, Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
                    }
                }
            }
        }, SpecialCarbineMkII = {
            id = "weapon_specialcarbine_mk2", name = "Special Carbine Mk II", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_02"
                    }, {
                        name = "Tracer Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER"
                    }, {
                        name = "Incendiary Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY"
                    }, {
                        name = "Hollow Point Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING"
                    }, {
                        name = "FMJ Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ"
                    }
                }, Sights = {
                    {
                        name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
                    }, {
                        name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
                    }, {
                        name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, Barrel = {
                    {
                        name = "Default", id = "COMPONENT_AT_SC_BARREL_01"
                    }, {
                        name = "Heavy", id = "COMPONENT_AT_SC_BARREL_02"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
                    }, {
                        name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
                    }, {
                        name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
                    }, {
                        name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
                    }, {
                        name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
                    }, {
                        name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
                    }, {
                        name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
                    }, {
                        name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
                    }
                }
            }
        }, BullpupRifle = {
            id = "weapon_bullpuprifle", name = "Bullpup Rifle", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_BULLPUPRIFLE_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_BULLPUPRIFLE_CLIP_02"
                    }
                }, Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_SMALL"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
                    }
                }
            }
        }, BullpupRifleMkII = {
            id = "weapon_bullpuprifle_mk2", name = "Bullpup Rifle Mk II", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_02"
                    }, {
                        name = "Tracer Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_TRACER"
                    }, {
                        name = "Incendiary Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY"
                    }, {
                        name = "Armor Piercing Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING"
                    }, {
                        name = "FMJ Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ"
                    }
                }, Sights = {
                    {
                        name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
                    }, {
                        name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_02_MK2"
                    }, {
                        name = "Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, Barrel = {
                    {
                        name = "Default", id = "COMPONENT_AT_BP_BARREL_01"
                    }, {
                        name = "Heavy", id = "COMPONENT_AT_BP_BARREL_02"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
                    }, {
                        name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
                    }, {
                        name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
                    }, {
                        name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
                    }, {
                        name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
                    }, {
                        name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
                    }, {
                        name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
                    }, {
                        name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
                    }
                }
            }
        }, CompactRifle = {
            id = "weapon_compactrifle", name = "Compact Rifle", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_02"
                    }, {
                        name = "Drum Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_03"
                    }
                }
            }
        }
    }, LMG = {
        MG = {
            id = "weapon_mg", name = "MG", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_MG_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_MG_CLIP_02"
                    }
                }, Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_SMALL_02"
                    }
                }
            }
        }, CombatMG = {
            id = "weapon_combatmg", name = "Combat MG", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_COMBATMG_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_COMBATMG_CLIP_02"
                    }
                }, Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
                    }
                }
            }
        }, CombatMGMkII = {
            id = "weapon_combatmg_mk2", name = "Combat MG Mk II", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_COMBATMG_MK2_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_COMBATMG_MK2_CLIP_02"
                    }, {
                        name = "Tracer Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_TRACER"
                    }, {
                        name = "Incendiary Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_INCENDIARY"
                    }, {
                        name = "Hollow Point Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_ARMORPIERCING"
                    }, {
                        name = "FMJ Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_FMJ"
                    }
                }, Sights = {
                    {
                        name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
                    }, {
                        name = "Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"
                    }, {
                        name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
                    }
                }, Barrel = {
                    {
                        name = "Default", id = "COMPONENT_AT_MG_BARREL_01"
                    }, {
                        name = "Heavy", id = "COMPONENT_AT_MG_BARREL_02"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
                    }, {
                        name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
                    }, {
                        name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
                    }, {
                        name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
                    }, {
                        name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
                    }, {
                        name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
                    }, {
                        name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
                    }
                }
            }
        }, GusenbergSweeper = {
            id = "weapon_gusenberg", name = "GusenbergSweeper", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_GUSENBERG_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_GUSENBERG_CLIP_02"
                    }
                }
            }
        }
    }, Snipers = {
        SniperRifle = {
            id = "weapon_sniperrifle", name = "Sniper Rifle", bInfAmmo = false, mods = {
                Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_LARGE"
                    }, {
                        name = "Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
                    }
                }
            }
        }, HeavySniper = {
            id = "weapon_heavysniper", name = "Heavy Sniper", bInfAmmo = false, mods = {
                Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_LARGE"
                    }, {
                        name = "Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"
                    }
                }
            }
        }, HeavySniperMkII = {
            id = "weapon_heavysniper_mk2", name = "Heavy Sniper Mk II", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_02"
                    }, {
                        name = "Incendiary Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY"
                    }, {
                        name = "Armor Piercing Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING"
                    }, {
                        name = "FMJ Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ"
                    }, {
                        name = "Explosive Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE"
                    }
                }, Sights = {
                    {
                        name = "Zoom Scope", id = "COMPONENT_AT_SCOPE_LARGE_MK2"
                    }, {
                        name = "Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"
                    }, {
                        name = "Nigt Vision Scope", id = "COMPONENT_AT_SCOPE_NV"
                    }, {
                        name = "Thermal Scope", id = "COMPONENT_AT_SCOPE_THERMAL"
                    }
                }, Barrel = {
                    {
                        name = "Default", id = "COMPONENT_AT_SR_BARREL_01"
                    }, {
                        name = "Heavy", id = "COMPONENT_AT_SR_BARREL_02"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_SR_SUPP_03"
                    }, {
                        name = "Squared Muzzle Brake", id = "COMPONENT_AT_MUZZLE_08"
                    }, {
                        name = "Bell-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_09"
                    }
                }
            }
        }, MarksmanRifle = {
            id = "weapon_marksmanrifle", name = "Marksman Rifle", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_MARKSMANRIFLE_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_MARKSMANRIFLE_CLIP_02"
                    }
                }, Sights = {
                    {
                        name = "Scope", id = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
                    }
                }
            }
        }, MarksmanRifleMkII = {
            id = "weapon_marksmanrifle_mk2", name = "Marksman Rifle Mk II", bInfAmmo = false, mods = {
                Magazines = {
                    {
                        name = "Default Magazine", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_01"
                    }, {
                        name = "Extended Magazine", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_02"
                    }, {
                        name = "Tracer Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_TRACER"
                    }, {
                        name = "Incendiary Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_INCENDIARY"
                    }, {
                        name = "Hollow Point Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_ARMORPIERCING"
                    }, {
                        name = "FMJ Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_FMJ	"
                    }
                }, Sights = {
                    {
                        name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
                    }, {
                        name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
                    }, {
                        name = "Zoom Scope", id = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2"
                    }
                }, Flashlight = {
                    {
                        name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
                    }
                }, Barrel = {
                    {
                        name = "Default", id = "COMPONENT_AT_MRFL_BARREL_01"
                    }, {
                        name = "Heavy", id = "COMPONENT_AT_MRFL_BARREL_02"
                    }
                }, BarrelAttachments = {
                    {
                        name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
                    }, {
                        name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
                    }, {
                        name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
                    }, {
                        name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
                    }, {
                        name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
                    }, {
                        name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
                    }, {
                        name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
                    }, {
                        name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
                    }
                }, Grips = {
                    {
                        name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
                    }
                }
            }
        }
    }, Heavy = {
        RPG = {
            id = "weapon_rpg", name = "RPG", bInfAmmo = false, mods = {}
        }, GrenadeLauncher = {
            id = "weapon_grenadelauncher", name = "Grenade Launcher", bInfAmmo = false, mods = {}
        }, GrenadeLauncherSmoke = {
            id = "weapon_grenadelauncher_smoke", name = "Grenade Launcher Smoke", bInfAmmo = false, mods = {}
        }, Minigun = {
            id = "weapon_minigun", name = "Minigun", bInfAmmo = false, mods = {}
        }, FireworkLauncher = {
            id = "weapon_firework", name = "Firework Launcher", bInfAmmo = false, mods = {}
        }, Railgun = {
            id = "weapon_railgun", name = "Railgun", bInfAmmo = false, mods = {}
        }, HomingLauncher = {
            id = "weapon_hominglauncher", name = "Homing Launcher", bInfAmmo = false, mods = {}
        }, CompactGrenadeLauncher = {
            id = "weapon_compactlauncher", name = "Compact Grenade Launcher", bInfAmmo = false, mods = {}
        }, Widowmaker = {
            id = "weapon_rayminigun", name = "Widowmaker", bInfAmmo = false, mods = {}
        }
    }, Throwables = {
        Grenade = {
            id = "weapon_grenade", name = "Grenade", bInfAmmo = false, mods = {}
        }, BZGas = {
            id = "weapon_bzgas", name = "BZ Gas", bInfAmmo = false, mods = {}
        }, MolotovCocktail = {
            id = "weapon_molotov", name = "Molotov Cocktail", bInfAmmo = false, mods = {}
        }, StickyBomb = {
            id = "weapon_stickybomb", name = "Sticky Bomb", bInfAmmo = false, mods = {}
        }, ProximityMines = {
            id = "weapon_proxmine", name = "Proximity Mines", bInfAmmo = false, mods = {}
        }, Snowballs = {
            id = "weapon_snowball", name = "Snowballs", bInfAmmo = false, mods = {}
        }, PipeBombs = {
            id = "weapon_pipebomb", name = "Pipe Bombs", bInfAmmo = false, mods = {}
        }, Baseball = {
            id = "weapon_ball", name = "Baseball", bInfAmmo = false, mods = {}
        }, TearGas = {
            id = "weapon_smokegrenade", name = "Tear Gas", bInfAmmo = false, mods = {}
        }, Flare = {
            id = "weapon_flare", name = "Flare", bInfAmmo = false, mods = {}
        }
    }, Misc = {
        Parachute = {
            id = "gadget_parachute", name = "Parachute", bInfAmmo = false, mods = {}
        }, FireExtinguisher = {
            id = "weapon_fireextinguisher", name = "Fire Extinguisher", bInfAmmo = false, mods = {}
        }
    }
}

local aA = {
    "Dinghy", "Dinghy2", "Dinghy3", "Dingh4", "Jetmax", "Marquis", "Seashark", "Seashark2", "Seashark3", "Speeder", "Speeder2", "Squalo", "Submersible", "Submersible2", "Suntrap", "Toro", "Toro2", "Tropic", "Tropic2", "Tug"
}
local aB = {
    "Benson", "Biff", "Cerberus", "Cerberus2", "Cerberus3", "Hauler", "Hauler2", "Mule", "Mule2", "Mule3", "Mule4", "Packer", "Phantom", "Phantom2", "Phantom3", "Pounder", "Pounder2", "Stockade", "Stockade3", "Terbyte"
}
local aC = {
    "Blista", "Blista2", "Blista3", "Brioso", "Dilettante", "Dilettante2", "Issi2", "Issi3", "issi4", "Iss5", "issi6", "Panto", "Prarire", "Rhapsody"
}
local aD = {
    "CogCabrio", "Exemplar", "F620", "Felon", "Felon2", "Jackal", "Oracle", "Oracle2", "Sentinel", "Sentinel2", "Windsor", "Windsor2", "Zion", "Zion2"
}
local aE = {
    "Bmx", "Cruiser", "Fixter", "Scorcher", "Tribike", "Tribike2", "tribike3"
}
local aF = {
    "ambulance", "FBI", "FBI2", "FireTruk", "PBus", "police", "Police2", "Police3", "Police4", "PoliceOld1", "PoliceOld2", "PoliceT", "Policeb", "Polmav", "Pranger", "Predator", "Riot", "Riot2", "Sheriff", "Sheriff2"
}
local aG = {
    "Akula", "Annihilator", "Buzzard", "Buzzard2", "Cargobob", "Cargobob2", "Cargobob3", "Cargobob4", "Frogger", "Frogger2", "Havok", "Hunter", "Maverick", "Savage", "Seasparrow", "Skylift", "Supervolito", "Supervolito2", "Swift", "Swift2", "Valkyrie", "Valkyrie2", "Volatus"
}
local aH = {
    "Bulldozer", "Cutter", "Dump", "Flatbed", "Guardian", "Handler", "Mixer", "Mixer2", "Rubble", "Tiptruck", "Tiptruck2"
}
local aI = {
    "APC", "Barracks", "Barracks2", "Barracks3", "Barrage", "Chernobog", "Crusader", "Halftrack", "Khanjali", "Rhino", "Scarab", "Scarab2", "Scarab3", "Thruster", "Trailersmall2"
}
local aJ = {
    "Akuma", "Avarus", "Bagger", "Bati2", "Bati", "BF400", "Blazer4", "CarbonRS", "Chimera", "Cliffhanger", "Daemon", "Daemon2", "Defiler", "Deathbike", "Deathbike2", "Deathbike3", "Diablous", "Diablous2", "Double", "Enduro", "esskey", "Faggio2", "Faggio3", "Faggio", "Fcr2", "fcr", "gargoyle", "hakuchou2", "hakuchou", "hexer", "innovation", "Lectro", "Manchez", "Nemesis", "Nightblade", "Oppressor", "Oppressor2", "PCJ", "Ratbike", "Ruffian", "Sanchez2", "Sanchez", "Sanctus", "Shotaro", "Sovereign", "Thrust", "Vader", "Vindicator", "Vortex", "Wolfsbane", "zombiea", "zombieb"
}
local aK = {
    "Blade", "Buccaneer", "Buccaneer2", "Chino", "Chino2", "clique", "Deviant", "Dominator", "Dominator2", "Dominator3", "Dominator4", "Dominator5", "Dominator6", "Dukes", "Dukes2", "Ellie", "Faction", "faction2", "faction3", "Gauntlet", "Gauntlet2", "Hermes", "Hotknife", "Hustler", "Impaler", "Impaler2", "Impaler3", "Impaler4", "Imperator", "Imperator2", "Imperator3", "Lurcher", "Moonbeam", "Moonbeam2", "Nightshade", "Phoenix", "Picador", "RatLoader", "RatLoader2", "Ruiner", "Ruiner2", "Ruiner3", "SabreGT", "SabreGT2", "Sadler2", "Slamvan", "Slamvan2", "Slamvan3", "Slamvan4", "Slamvan5", "Slamvan6", "Stalion", "Stalion2", "Tampa", "Tampa3", "Tulip", "Vamos,", "Vigero", "Virgo", "Virgo2", "Virgo3", "Voodoo", "Voodoo2", "Yosemite"
}
local aL = {
    "BFinjection", "Bifta", "Blazer", "Blazer2", "Blazer3", "Blazer5", "Bohdi", "Brawler", "Bruiser", "Bruiser2", "Bruiser3", "Caracara", "DLoader", "Dune", "Dune2", "Dune3", "Dune4", "Dune5", "Insurgent", "Insurgent2", "Insurgent3", "Kalahari", "Kamacho", "LGuard", "Marshall", "Mesa", "Mesa2", "Mesa3", "Monster", "Monster4", "Monster5", "Nightshark", "RancherXL", "RancherXL2", "Rebel", "Rebel2", "RCBandito", "Riata", "Sandking", "Sandking2", "Technical", "Technical2", "Technical3", "TrophyTruck", "TrophyTruck2", "Freecrawler", "Menacer"
}
local aM = {
    "AlphaZ1", "Avenger", "Avenger2", "Besra", "Blimp", "blimp2", "Blimp3", "Bombushka", "Cargoplane", "Cuban800", "Dodo", "Duster", "Howard", "Hydra", "Jet", "Lazer", "Luxor", "Luxor2", "Mammatus", "Microlight", "Miljet", "Mogul", "Molotok", "Nimbus", "Nokota", "Pyro", "Rogue", "Seabreeze", "Shamal", "Starling", "Stunt", "Titan", "Tula", "Velum", "Velum2", "Vestra", "Volatol", "Striekforce"
}
local aN = {
    "BJXL", "Baller", "Baller2", "Baller3", "Baller4", "Baller5", "Baller6", "Cavalcade", "Cavalcade2", "Dubsta", "Dubsta2", "Dubsta3", "FQ2", "Granger", "Gresley", "Habanero", "Huntley", "Landstalker", "patriot", "Patriot2", "Radi", "Rocoto", "Seminole", "Serrano", "Toros", "XLS", "XLS2"
}
local aO = {
    "Asea", "Asea2", "Asterope", "Cog55", "Cogg552", "Cognoscenti", "Cognoscenti2", "emperor", "emperor2", "emperor3", "Fugitive", "Glendale", "ingot", "intruder", "limo2", "premier", "primo", "primo2", "regina", "romero", "stafford", "Stanier", "stratum", "stretch", "surge", "tailgater", "warrener", "Washington"
}
local aP = {
    "Airbus", "Brickade", "Bus", "Coach", "Rallytruck", "Rentalbus", "taxi", "Tourbus", "Trash", "Trash2", "WastIndr", "PBus2"
}
local aQ = {
    "Alpha", "Banshee", "Banshee2", "BestiaGTS", "Buffalo", "Buffalo2", "Buffalo3", "Carbonizzare", "Comet2", "Comet3", "Comet4", "Comet5", "Coquette", "Deveste", "Elegy", "Elegy2", "Feltzer2", "Feltzer3", "FlashGT", "Furoregt", "Fusilade", "Futo", "GB200", "Hotring", "Infernus2", "Italigto", "Jester", "Jester2", "Khamelion", "Kurama", "Kurama2", "Lynx", "MAssacro", "MAssacro2", "neon", "Ninef", "ninfe2", "omnis", "Pariah", "Penumbra", "Raiden", "RapidGT", "RapidGT2", "Raptor", "Revolter", "Ruston", "Schafter2", "Schafter3", "Schafter4", "Schafter5", "Schafter6", "Schlagen", "Schwarzer", "Sentinel3", "Seven70", "Specter", "Specter2", "Streiter", "Sultan", "Surano", "Tampa2", "Tropos", "Verlierer2", "ZR380", "ZR3802", "ZR3803"
}
local aR = {
    "Ardent", "BType", "BType2", "BType3", "Casco", "Cheetah2", "Cheburek", "Coquette2", "Coquette3", "Deluxo", "Fagaloa", "Gt500", "JB700", "JEster3", "MAmba", "Manana", "Michelli", "Monroe", "Peyote", "Pigalle", "RapidGT3", "Retinue", "Savastra", "Stinger", "Stingergt", "Stromberg", "Swinger", "Torero", "Tornado", "Tornado2", "Tornado3", "Tornado4", "Tornado5", "Tornado6", "Viseris", "Z190", "ZType"
}
local aS = {
    "Adder", "Autarch", "Bullet", "Cheetah", "Cyclone", "EntityXF", "Entity2", "FMJ", "GP1", "Infernus", "LE7B", "Nero", "Nero2", "Osiris", "Penetrator", "PFister811", "Prototipo", "Reaper", "SC1", "Scramjet", "Sheava", "SultanRS", "Superd", "T20", "Taipan", "Tempesta", "Tezeract", "Turismo2", "Turismor", "Tyrant", "Tyrus", "Vacca", "Vagner", "Vigilante", "Visione", "Voltic", "Voltic2", "Zentorno", "Italigtb", "Italigtb2", "XA21"
}
local aT = {
    "ArmyTanker", "ArmyTrailer", "ArmyTrailer2", "BaleTrailer", "BoatTrailer", "CableCar", "DockTrailer", "Graintrailer", "Proptrailer", "Raketailer", "TR2", "TR3", "TR4", "TRFlat", "TVTrailer", "Tanker", "Tanker2", "Trailerlogs", "Trailersmall", "Trailers", "Trailers2", "Trailers3"
}
local aU = {
    "Freight", "Freightcar", "Freightcont1", "Freightcont2", "Freightgrain", "Freighttrailer", "TankerCar"
}
local aV = {
    "Airtug", "Caddy", "Caddy2", "Caddy3", "Docktug", "Forklift", "Mower", "Ripley", "Sadler", "Scrap", "TowTruck", "Towtruck2", "Tractor", "Tractor2", "Tractor3", "TrailerLArge2", "Utilitruck", "Utilitruck3", "Utilitruck2"
}
local aW = {
    "Bison", "Bison2", "Bison3", "BobcatXL", "Boxville", "Boxville2", "Boxville3", "Boxville4", "Boxville5", "Burrito", "Burrito2", "Burrito3", "Burrito4", "Burrito5", "Camper", "GBurrito", "GBurrito2", "Journey", "Minivan", "Minivan2", "Paradise", "pony", "Pony2", "Rumpo", "Rumpo2", "Rumpo3", "Speedo", "Speedo2", "Speedo4", "Surfer", "Surfer2", "Taco", "Youga", "youga2"
}
local aX = {
    "Boats", "Commercial", "Compacts", "Coupes", "Cycles", "Emergency", "Helictopers", "Industrial", "Military", "Motorcycles", "Muscle", "Off-Road", "Planes", "SUVs", "Sedans", "Service", "Sports", "Sports Classic", "Super", "Trailer", "Trains", "Utility", "Vans"
}
local aY = {
    aA, aB, aC, aD, aE, aF, aG, aH, aI, aJ, aK, aL, aM, aN, aO, aP, aQ, aR, aS, aT, aU, aV, aW
}

local Curse = { 
    config = {      
        keys = { down = Keys["DOWN"], up = Keys["UP"], left = Keys["LEFT"], right = Keys["RIGHT"], select = Keys["ENTER"], back = Keys["BACKSPACE"], open = Keys["G"]},
		titleFont = 1,
		buttonFont = 0,
		buttonColor = {0, 0, 0, 255},
		subTextFont = 3,

        spawnInVeh = true,
        delCurVeh = true,

        NoDrop = false,
        ExplosiveAmmo = false,
        NoSpread = false,
        TriggerBot = false,
        TriggerBotDistance = 5000,
        TargetInsideVehicles = true,
        OnlyTargetPlayers = false
    },
    natives = {
        isDisabledControlPressed = function(inputGroup, control) --[[IsDisabledControlPressed]]
			return (cInvoke(" 0xE2587F8CBBD87B1D ", inputGroup, control, Citizen.ReturnResultAnyway()))
        end
    },
	util = {}
}
Curse.__index = Curse

-- Deprecated
Curse.debug = true
function Curse.SetDebugEnabled(enabled)
end
function Curse.IsDebugEnabled()
	return false
end
---

local cThread = Citizen.CreateThread
local cWait = Citizen.Wait
local cInvoke = Citizen.InvokeNative

local enabled = true

local menus = { }
local optionCount = 0

local currentKey = nil
local currentMenu = nil

local toolTipWidth = 0.153

local spriteWidth = 0.027
local spriteHeight = spriteWidth * GetAspectRatio()

local titleHeight = 0.05 --default 0.101
local titleYOffset = -0.008 --default 0.021
local titleScale = 1. --default 1

local buttonHeight = 0.03 --default 0.38
local buttonScale = 0.365
local buttonTextXOffset = 0.005
local buttonTextYOffset = -0.002
local buttonSpriteXOffset = 0.002
local buttonSpriteYOffset = 0.005

local black = {0, 0, 0, 255}
local cyan = {0, 247, 255, 255}

local selectedPlayer = nil

local oldclipspd
local newclipspd

local defaultStyle = {
	x = 0.0175,
	y = 0.025,
	width = 0.19, --default 0.23
	maxOptionCountOnScreen = 10,
	titleColor = { 0, 247, 255, 255 },
	titleBackgroundColor = { 0, 0, 0, 255 },
	titleBackgroundSprite = nil,
	subTitleColor = { 0, 247, 255, 255 },
	textColor = { 0, 247, 255, 255 },
	subTextColor = { 0, 247, 255, 255 },
	focusTextColor = { 255, 255, 255, 255 },
	focusColor = { 0, 247, 255, 160 },
	backgroundColor = { 0, 0, 0, 160 },
	subTitleBackgroundColor = { 0, 0, 0, 255 },
	subTitleEdgeColor = {0, 247, 255, 255},
	buttonPressedSound = { name = 'SELECT', set = 'HUD_FRONTEND_DEFAULT_SOUNDSET' }, --https://pastebin.com/0neZdsZ5
}

--===========================================
--[[Curse Functions]]
--===========================================

local function add(a, b)
    local result = vector3(a.x + b.x, a.y + b.y, a.z + b.z)

    return result
end

local function RotToDir(rot)
    local radZ = rot.z * 0.0174532924
    local radX = rot.x * 0.0174532924
    local num = math.abs(math.cos(radX))
    local dir = vector3(-math.sin(radZ) * num, math.cos(radZ) * num, radX)

    return dir
end

local function IsPedAPlayer(ped)
    local id = NetworkGetPlayerIndexFromPed(ped)

    return id and id > 0
end

local function Multiply(vector, mult)
    return vector3(vector.x * mult, vector.y * mult, vector.z * mult)
end

local function RepairVehicle(vehicle)
    if vehicle == 0 then return false end
    SetVehicleFixed(vehicle)
    SetVehicleLightsMode(vehicle, 0)
    SetVehicleLights(vehicle, 0)
    SetVehicleBurnout(vehicle, false)
    SetVehicleEngineHealth(vehicle, 1000.0)
    SetVehicleFuelLevel(vehicle, 100.0)
    SetVehicleOilLevel(vehicle, 100.0)
    SetVehicleDirtLevel(vehicle, 0.0)
    return true
end

local function GetCamDir()
    local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId()) 
    local pitch = GetGameplayCamRelativePitch()
    local x = -math.sin(heading * math.pi / 180.0) 
    local y = math.cos(heading * math.pi / 180.0) 
    local z = math.sin(pitch * math.pi / 180.0) 
    local len = math.sqrt(x * x + y * y + z * z) 
    if len ~= 0 then 
        x = x / len y = y / len z = z / len 
    end
    return x, y, z 
end

local function GetSeatPedIsIn(ped) 
    if not IsPedInAnyVehicle(ped, false) then 
        return 
    else veh = GetVehiclePedIsIn(ped) 
        for i = 0, GetVehicleMaxNumberOfPassengers(veh) do 
            if GetPedInVehicleSeat(veh) then
                return i 
            end 
        end 
    end 
end

local function GetClosestBone(ped, _seat)
    local cur = GetGameplayCamCoord()
    local _dir = GetGameplayCamRot(0)
    local dir = RotToDir(_dir)
    local where = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0.0, 0.0)
    local dist = GetDistanceBetweenCoords(cur.x, cur.y, cur.z, where.x, where.y, where.z) + 25.0
    local len = Multiply(dir, dist)
    local targ = cur + len
    local handle = StartShapeTestRay(cur.x, cur.y, cur.z, targ.x, targ.y, targ.z, -1)
    local _, hit, hit_pos, _, entity = GetShapeTestResult(handle)

    if IsEntityAVehicle(entity) then
        entity = GetPedInVehicleSeat(entity, _seat)
    end

    if entity ~= ped then return false end
    local _dist, bone, _name = math.huge, 0

    if hit then
        for _, dat in ipairs(bone_check) do
            local id = dat[1]

            if id ~= -1 then
                local bone_coords = GetPedBoneCoords(ped, id, 0.0, 0.0, 0.0)
                local b_dist = GetDistanceBetweenCoords(bone_coords.x, bone_coords.y, bone_coords.z, hit_pos.x, hit_pos.y, hit_pos.z, true)

                if b_dist < _dist then
                    _dist = b_dist
                    bone = id
                    _name = dat[2]
                end
            end
        end
    end

    return bone, _dist, _name
end

local function RequestelControl(entity)
    if NetworkHasControlOfEntity(entity) then 
        return true 
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
    return NetworkRequestControlOfEntity(entity)
end

function Curse.util:RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000

    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result
end

local function GetDistance(pointA, pointB)
    
    local aX = pointA.x
    local aY = pointA.y
    local aZ = pointA.z 

    local bX = pointB.x
    local bY = pointB.y
    local bZ = pointB.z 

    local xBA = bX - aX
    local yBA = bY - aY
    local zBA = bZ - aZ

    local y2 = yBA * yBA
    local x2 =  xBA * xBA
    local sum2 = y2 + x2	

    return math.sqrt(sum2 + zBA)
end

local function NoBulletDrop()
    if IsDisabledControlPressed(0, Keys["MOUSE1"]) then
        local curWep = GetSelectedPedWeapon(PlayerPedId())
        local cur = GetOffsetFromEntityInWorldCoords(GetCurrentPedWeaponEntityIndex(PlayerPedId()), 0.0, 0.0, 0.0)
        local _dir = GetGameplayCamRot(0)
        local dir = RotToDir(_dir)
        local dist = 99999.9
        local len = Multiply(dir, dist)
        local targ = cur + len
        ShootSingleBulletBetweenCoords(cur.x, cur.y, cur.z, targ.x, targ.y, targ.z, 5, 1, curWep, PlayerPedId(), true, true, 24000.0)
        SetPedShootsAtCoord(PlayerPedId(), targ.x, targ.y, targ.z, true)
    end
end

local function GetPedHoveredOver()
    local cur = GetGameplayCamCoord()
    local _dir = GetGameplayCamRot(0)
    local dir = RotToDir(_dir)
    local len = Multiply(dir, Curse.config.TriggerBotDistance)
    local targ = cur + len
    local handle = StartShapeTestRay(cur.x, cur.y, cur.z, targ.x, targ.y, targ.z, -1)
    local _, hit, hit_pos, _, entity = GetShapeTestResult(handle)
    local force
    local _seat

    if DoesEntityExist(entity) and IsEntityAVehicle(entity) and Curse.config.TargetInsideVehicles and HasEntityClearLosToEntityInFront(PlayerPedId(), entity) then
        local driver = GetPedInVehicleSeat(entity, -1)

        if DoesEntityExist(driver) and not IsPedDeadOrDying(driver) then
            entity = driver
            force = true
            _seat = -1
        else
            local _dist = math.huge
            local _ped

            for i = -2, GetVehicleMaxNumberOfPassengers(vehicle) do
                local who = GetPedInVehicleSeat(entity, i)

                if DoesEntityExist(who) and IsEntityAPed(who) and not IsPedDeadOrDying(who) then
                    local s_pos = GetOffsetFromEntityInWorldCoords(who, 0.0, 0.0, 0.0)
                    local s_dist = GetDistanceBetweenCoords(hit_pos.x, hit_pos.y, hit_pos.z, s_pos.x, s_pos.y, s_pos.z, true)

                    if s_dist < _dist then
                        _dist = s_dist
                        _ped = who
                        _seat = i
                    end
                end
            end

            if DoesEntityExist(_ped) and IsEntityAPed(_ped) then
                entity = _ped
                force = true
            end
        end
    end

    if hit and DoesEntityExist(entity) and DoesEntityHaveDrawable(entity) and IsEntityAPed(entity) and (force or HasEntityClearLosToEntityInFront(PlayerPedId(), entity)) then return true, entity, _seat end

    return nil, false, nil
end

local function TriggerBot()
    local found, ent, _seat = GetPedHoveredOver()

    if found and DoesEntityExist(ent) and IsEntityAPed(ent) and IsPedWeaponReadyToShoot(PlayerPedId()) and (not Curse.config.OnlyTargetPlayers or IsPedAPlayer(ent)) then
        local _bone, _dist, _name = GetClosestBone(ent, _seat)

        -- SKEL_HEAD
        if _seat ~= nil then
            _bone = 31086
        end

        if _bone and not IsPedDeadOrDying(ent) then
            --if FM.Config.Player.OneTap then
            --    SetPlayerWeaponDamageModifier(PlayerId(), 100.0)
            --end

            local _pos = GetPedBoneCoords(ent, _bone, 0.0, 0.0, 0.0)
            local where = GetOffsetFromEntityInWorldCoords(ent, 0.0, 0.0, 1.0)
            SetPedShootsAtCoord(PlayerPedId(), _pos.x, _pos.y, _pos.z, true)
            --if FM.Config.Player.OneTap then
            --    SetPlayerWeaponDamageModifier(PlayerId(), 1.0)
            --end
        end
    end
end

local function SpawnCar(veh)
    local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.0, 0.5)) 
if veh == nil then 
    veh = "adder"
end
vehiclehash = GetHashKey(veh) 
RequestModel(vehiclehash) 

Citizen.CreateThread(function() 
    local e4 = 0
    while not HasModelLoaded(vehiclehash) do 
        e4 = e4 + 100
        Citizen.Wait(100) 
        if e4 > 5000 then
            ShowNotification("~r~Cannot spawn this vehicle.") 
            break 
        end 
    end
    if Curse.config.delCurVeh and IsPedInAnyVehicle(GetPlayerPed(-1), true) then
        local vehicle = GetVehiclePedIsUsing(GetPlayerPed(-1))
        SetEntityAsMissionEntity(vehicle, true, true)
        DeleteVehicle(vehicle)
    end
    SpawnedCar = CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId(-1)) + 90, 1, 0) 
    SetVehicleStrong(SpawnedCar, true) 
    SetVehicleEngineOn(SpawnedCar, true, true, false) 
    SetVehicleEngineCanDegrade(SpawnedCar, false)
    if Curse.config.spawnInVeh then 
        SetPedIntoVehicle(GetPlayerPed(-1), SpawnedCar, -1) 
    end
end) 
end

local function setMenuProperty(id, property, value)
	if not id then
		return
	end

	local menu = menus[id]
	if menu then
		menu[property] = value
	end
end

local function setStyleProperty(id, property, value)
	if not id then
		return
	end

	local menu = menus[id]

	if menu then
		if not menu.overrideStyle then
			menu.overrideStyle = { }
		end

		menu.overrideStyle[property] = value
	end
end

local function getStyleProperty(property, menu)
	menu = menu or currentMenu

	if menu.overrideStyle then
		local value = menu.overrideStyle[property]
		if value then
			return value
		end
	end

	return menu.style and menu.style[property] or defaultStyle[property]
end

local function copyTable(t)
	if type(t) ~= 'table' then
		return t
	end

	local result = { }
	for k, v in pairs(t) do
		result[k] = copyTable(v)
	end

	return result
end

local function setMenuVisible(id, visible, holdCurrentOption)
	if currentMenu then
		if visible then
			if currentMenu.id == id then
				return
			end
		else
			if currentMenu.id ~= id then
				return
			end
		end
	end

	if visible then
		local menu = menus[id]

		if not currentMenu then
			menu.currentOption = 1
		else
			if not holdCurrentOption then
				menus[currentMenu.id].currentOption = 1
			end
		end

		currentMenu = menu
	else
		currentMenu = nil
	end
end

local function setTextParams(font, color, scale, center, shadow, alignRight, wrapFrom, wrapTo)
	SetTextFont(font)
	SetTextColour(color[1], color[2], color[3], color[4] or 255)
	SetTextScale(scale, scale)

	if shadow then
		SetTextDropShadow()
	end

	if center then
		SetTextCentre(true)
	elseif alignRight then
		SetTextRightJustify(true)
	end

	if not wrapFrom or not wrapTo then
		wrapFrom = wrapFrom or getStyleProperty('x')
		wrapTo = wrapTo or getStyleProperty('x') + getStyleProperty('width') - buttonTextXOffset
	end

	SetTextWrap(wrapFrom, wrapTo)
end

local function getLinesCount(text, x, y)
	BeginTextCommandLineCount('TWOSTRINGS')
	AddTextComponentString(tostring(text))
	return EndTextCommandGetLineCount(x, y)
end

local function drawText(text, x, y)
	BeginTextCommandDisplayText('TWOSTRINGS')
	AddTextComponentString(tostring(text))
	EndTextCommandDisplayText(x, y)
end

local function drawRect(x, y, width, height, color)
	DrawRect(x, y, width, height, color[1], color[2], color[3], color[4] or 255)
end

local function getCurrentIndex()
	if currentMenu.currentOption <= getStyleProperty('maxOptionCountOnScreen') and optionCount <= getStyleProperty('maxOptionCountOnScreen') then
		return optionCount
	elseif optionCount > currentMenu.currentOption - getStyleProperty('maxOptionCountOnScreen') and optionCount <= currentMenu.currentOption then
		return optionCount - (currentMenu.currentOption - getStyleProperty('maxOptionCountOnScreen'))
	end

	return nil
end

local function drawTitle()
	local x = getStyleProperty('x') + getStyleProperty('width') / 2
	local y = getStyleProperty('y') + titleHeight / 2

	if getStyleProperty('titleBackgroundSprite') then
		DrawSprite(getStyleProperty('titleBackgroundSprite').dict, getStyleProperty('titleBackgroundSprite').name, x, y, getStyleProperty('width'), titleHeight, 0., 255, 255, 255, 255)
	else
		--drawRect(x, y, getStyleProperty('width'), titleHeight, getStyleProperty('subTitleEdgeColor'))
		drawRect(x, y, getStyleProperty('width'), titleHeight, getStyleProperty('titleBackgroundColor'))
	end

	if currentMenu.title then
		setTextParams(Curse.config.titleFont, getStyleProperty('titleColor'), titleScale, true)
		drawText(currentMenu.title, x, y - titleHeight / 2 + titleYOffset)
	end
end

local function drawSubTitle()
	local x = getStyleProperty('x') + getStyleProperty('width') / 2
	local y = getStyleProperty('y') + titleHeight + buttonHeight / 2
	
	drawRect(x, y, getStyleProperty('width'), buttonHeight, getStyleProperty('subTitleEdgeColor'))
	drawRect(x, y, getStyleProperty('width'), buttonHeight - 0.002, getStyleProperty('subTitleBackgroundColor'))

	setTextParams(Curse.config.buttonFont, getStyleProperty('subTitleColor'), buttonScale, false)
	drawText(currentMenu.subTitle, getStyleProperty('x') + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset)
end

local function drawButton(text, subText)
	local currentIndex = getCurrentIndex()
	if not currentIndex then
		return
	end

	local backgroundColor = nil
	local textColor = nil
	local subTextColor = nil
	local shadow = false

	if currentMenu.currentOption == optionCount then
		backgroundColor = getStyleProperty('focusColor')
		textColor = getStyleProperty('focusTextColor')
		subTextColor = getStyleProperty('focusTextColor')
	else
		backgroundColor = getStyleProperty('backgroundColor')
		textColor = getStyleProperty('textColor')
		subTextColor = getStyleProperty('subTextColor')
		shadow = true
	end

	local x = getStyleProperty('x') + getStyleProperty('width') / 2
	local y = getStyleProperty('y') + titleHeight + buttonHeight + (buttonHeight * currentIndex) - buttonHeight / 2
	
	--drawRect(x, y, getStyleProperty('width'), buttonHeight + 0.005, defaultStyle.titleColor)
	drawRect(x, y, getStyleProperty('width'), buttonHeight, Curse.config.buttonColor)

	setTextParams(Curse.config.buttonFont, textColor, buttonScale, false, shadow)
	drawText(text, getStyleProperty('x') + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset)

	if subText then
		setTextParams(Curse.config.subTextFont, subTextColor, buttonScale, false, shadow, true)
		drawText(subText, getStyleProperty('x') + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset)
	end
end

local function drawBottomBar()
	local y
	local x = getStyleProperty('x') + getStyleProperty('width') / 2
	if getCurrentIndex() then
		y = getStyleProperty('y') + titleHeight + buttonHeight / 2 + buttonHeight + (buttonHeight * getCurrentIndex()) - buttonHeight / 2
	else
		y = getStyleProperty('y') + titleHeight + buttonHeight / 2 + buttonHeight + (buttonHeight * getStyleProperty("maxOptionCountOnScreen")) - buttonHeight / 2
	end
	
	drawRect(x, y + buttonHeight / 2, getStyleProperty("width"), buttonHeight, black)
	drawRect(x, y, getStyleProperty("width"), 0.002, cyan)
	
	setTextParams(Curse.config.buttonFont, getStyleProperty('subTitleColor'), buttonScale, false, false, true)
	drawText(tostring(currentMenu.currentOption)..' / '..tostring(optionCount), x, y)
	
	setTextParams(Curse.config.subTextFont, getStyleProperty('subTitleColor'), buttonScale, false, false, false)
	drawText("4", x, y + 0.001)
	
	setTextParams(Curse.config.subTextFont, getStyleProperty('subTitleColor'), buttonScale, false, false, false)
	drawText("3", x, y - 0.006)
end

function Curse.CreateMenu(id, title, subTitle, style)
	-- Default settings
	local menu = { }

	-- Members
	menu.id = id
	menu.previousMenu = nil
	menu.aboutToBeClosed = false
	menu.currentOption = 1
	menu.title = title
	menu.subTitle = subTitle and string.upper(subTitle) or 'INTERACTION MENU'

	-- Style
	if style then
		menu.style = style
	end

	menus[id] = menu
end

function Curse.CreateSubMenu(id, parent, subTitle, style)
	local parentMenu = menus[parent]
	if not parentMenu then
		return
	end

	Curse.CreateMenu(id, parentMenu.title, subTitle and string.upper(subTitle) or parentMenu.subTitle)

	local menu = menus[id]

	menu.previousMenu = parent

	if parentMenu.overrideStyle then
		menu.overrideStyle = copyTable(parentMenu.overrideStyle)
	end

	if style then
		menu.style = style
	elseif parentMenu.style then
		menu.style = copyTable(parentMenu.style)
	end
end

function Curse.CurrentMenu()
	return currentMenu and currentMenu.id or nil
end

function Curse.OpenMenu(id)
	if id and menus[id] then
		PlaySoundFrontend(-1, 'SELECT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
		setMenuVisible(id, true)
	end
end

function Curse.IsMenuOpened(id)
	return currentMenu and currentMenu.id == id
end
Curse.Begin = Curse.IsMenuOpened

function Curse.IsAnyMenuOpened()
	return currentMenu ~= nil
end

function Curse.IsMenuAboutToBeClosed()
	return currentMenu and currentMenu.aboutToBeClosed
end

function Curse.CloseMenu()
	if not currentMenu then
		return
	end

	if currentMenu.aboutToBeClosed then
		currentMenu.aboutToBeClosed = false
		setMenuVisible(currentMenu.id, false)
		optionCount = 0
		currentKey = nil
		PlaySoundFrontend(-1, 'QUIT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
	else
		currentMenu.aboutToBeClosed = true
	end
end

function Curse.ToolTip(text, width, flipHorizontal)
	if not currentMenu then
		return
	end

	local currentIndex = getCurrentIndex()
	if not currentIndex then
		return
	end

	width = width or toolTipWidth

	local x = nil
	if not flipHorizontal then
		x = getStyleProperty('x') + getStyleProperty('width') + width / 2 + buttonTextXOffset
	else
		x = getStyleProperty('x') - width / 2 - buttonTextXOffset
	end

	local textX = x - (width / 2) + buttonTextXOffset
	setTextParams(Curse.config.buttonFont, getStyleProperty('textColor'), buttonScale, false, true, false, textX, textX + width - (buttonTextYOffset * 2))
	local linesCount = getLinesCount(text, textX, getStyleProperty('y'))

	local height = GetTextScaleHeight(buttonScale, Curse.config.buttonFont) * (linesCount + 1) + buttonTextYOffset
	local y = getStyleProperty('y') + titleHeight + (buttonHeight * currentIndex) + height / 2

	drawRect(x, y, width, height, getStyleProperty('backgroundColor'))

	y = y - (height / 2) + buttonTextYOffset
	drawText(text, textX, y)
end

function Curse.Button(text, subText)
	if not currentMenu then
		return
	end

	optionCount = optionCount + 1

	drawButton(text, subText)

	local pressed = false

	if currentMenu.currentOption == optionCount then
		if currentKey == Curse.config.keys.select then
			pressed = true
			PlaySoundFrontend(-1, getStyleProperty('buttonPressedSound').name, getStyleProperty('buttonPressedSound').set, true)
		elseif currentKey == Curse.config.keys.left or currentKey == Curse.config.keys.right then
			PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
		end
	end

	return pressed
end

function Curse.SpriteButton(text, dict, name, r, g, b, a)
	if not currentMenu then
		return
	end

	local pressed = Curse.Button(text)

	local currentIndex = getCurrentIndex()
	if not currentIndex then
		return
	end

	if not HasStreamedTextureDictLoaded(dict) then
		RequestStreamedTextureDict(dict)
	end
	DrawSprite(dict, name, getStyleProperty('x') + getStyleProperty('width') - spriteWidth / 2 - buttonSpriteXOffset, getStyleProperty('y') + titleHeight + buttonHeight + (buttonHeight * currentIndex) - spriteHeight / 2 + buttonSpriteYOffset, spriteWidth, spriteHeight, 0., r or 255, g or 255, b or 255, a or 255)

	return pressed
end

function Curse.InputButton(text, windowTitleEntry, defaultText, maxLength, subText)
	if not currentMenu then
		return
	end

	local pressed = Curse.Button(text, subText)
	local inputText = nil

	if pressed then
		DisplayOnscreenKeyboard(1, windowTitleEntry or 'FMMC_MPM_NA', '', defaultText or '', '', '', '', maxLength or 255)

		while true do
			DisableAllControlActions(0)

			local status = UpdateOnscreenKeyboard()
			if status == 2 then
				break
			elseif status == 1 then
				inputText = GetOnscreenKeyboardResult()
				break
			end

			cWait(0)
		end
	end

	return pressed, inputText
end

function Curse.MenuButton(text, id, subText)
	if not currentMenu then
		return
	end

	local pressed = Curse.Button(text, subText)

	if pressed then
		currentMenu.currentOption = optionCount
		setMenuVisible(currentMenu.id, false)
		setMenuVisible(id, true, true)
	end

	return pressed
end

function Curse.CheckBox(text, checked, callback)
	if not currentMenu then
		return
	end

	local name = nil
	if currentMenu.currentOption == optionCount + 1 then
		name = checked and 'shop_box_tickb' or 'shop_box_blankb'
	else
		name = checked and 'shop_box_tickb' or 'shop_box_blankb' --'shop_box_tick' or 'shop_box_blank'
	end

	local pressed = Curse.SpriteButton(text, 'commonmenu', name)

	if pressed then
		checked = not checked
		if callback then callback(checked) end
	end

	return pressed
end

function Curse.ComboBox(text, items, currentIndex, selectedIndex, callback)
	if not currentMenu then
		return
	end

	local itemsCount = #items
	local selectedItem = items[currentIndex]
	local isCurrent = currentMenu.currentOption == optionCount + 1
	selectedIndex = selectedIndex or currentIndex

	if itemsCount > 1 and isCurrent then
		selectedItem = '← '..tostring(selectedItem)..' →'
	end

	local pressed = Curse.Button(text, selectedItem)

	if pressed then
		selectedIndex = currentIndex
	elseif isCurrent then
		if currentKey == Curse.config.keys.left then
			if currentIndex > 1 then currentIndex = currentIndex - 1 else currentIndex = itemsCount end
		elseif currentKey == Curse.config.keys.right then
			if currentIndex < itemsCount then currentIndex = currentIndex + 1 else currentIndex = 1 end
		end
	end

	if callback then callback(currentIndex, selectedIndex) end
	return pressed, currentIndex
end

function Curse.Display()
	if currentMenu then
		DisableControlAction(0, Curse.config.keys.left, true)
		DisableControlAction(0, Curse.config.keys.up, true)
		DisableControlAction(0, Curse.config.keys.down, true)
		DisableControlAction(0, Curse.config.keys.right, true)
		DisableControlAction(0, Curse.config.keys.back, true)

		if currentMenu.aboutToBeClosed then
			Curse.CloseMenu()
		else
			ClearAllHelpMessages()
			
			drawSubTitle()
			drawTitle()
			drawBottomBar()
			
			currentKey = nil

			if IsDisabledControlJustReleased(0, Curse.config.keys.down) then
				PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)

				if currentMenu.currentOption < optionCount then
					currentMenu.currentOption = currentMenu.currentOption + 1
				else
					currentMenu.currentOption = 1
				end
			elseif IsDisabledControlJustReleased(0, Curse.config.keys.up) then
				PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)

				if currentMenu.currentOption > 1 then
					currentMenu.currentOption = currentMenu.currentOption - 1
				else
					currentMenu.currentOption = optionCount
				end
			elseif IsDisabledControlJustReleased(0, Curse.config.keys.left) then
				currentKey = Curse.config.keys.left
			elseif IsDisabledControlJustReleased(0, Curse.config.keys.right) then
				currentKey = Curse.config.keys.right
			elseif IsControlJustReleased(0, Curse.config.keys.select) then
				currentKey = Curse.config.keys.select
			elseif IsDisabledControlJustReleased(0, Curse.config.keys.back) then
				if menus[currentMenu.previousMenu] then
					setMenuVisible(currentMenu.previousMenu, true)
					PlaySoundFrontend(-1, 'BACK', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
				else
					Curse.CloseMenu()
				end
			end

			optionCount = 0
		end
	end
end
Curse.End = Curse.Display

function Curse.CurrentOption()
	if currentMenu and optionCount ~= 0 then
		return currentMenu.currentOption
	end

	return nil
end

function Curse.IsItemHovered()
	if not currentMenu or optionCount == 0 then
		return false
	end

	return currentMenu.currentOption == optionCount
end

function Curse.IsItemSelected()
	return currentKey == Curse.config.keys.select and Curse.IsItemHovered()
end

function Curse.SetTitle(id, title)
	setMenuProperty(id, 'title', title)
end
Curse.SetMenuTitle = Curse.SetTitle

function Curse.SetSubTitle(id, text)
	setMenuProperty(id, 'subTitle', string.upper(text))
end
Curse.SetMenuSubTitle = Curse.SetSubTitle

function Curse.SetMenuStyle(id, style)
	setMenuProperty(id, 'style', style)
end

function Curse.SetMenuX(id, x)
	setStyleProperty(id, 'x', x)
end

function Curse.SetMenuY(id, y)
	setStyleProperty(id, 'y', y)
end

function Curse.SetMenuWidth(id, width)
	setStyleProperty(id, 'width', width)
end

function Curse.SetMenuMaxOptionCountOnScreen(id, count)
	setStyleProperty(id, 'maxOptionCountOnScreen', count)
end

function Curse.SetTitleColor(id, r, g, b, a)
	setStyleProperty(id, 'titleColor', { r, g, b, a })
end
Curse.SetMenuTitleColor = Curse.SetTitleColor

function Curse.SetMenuSubTitleColor(id, r, g, b, a)
	setStyleProperty(id, 'subTitleColor', { r, g, b, a })
end

function Curse.SetTitleBackgroundColor(id, r, g, b, a)
	setStyleProperty(id, 'titleBackgroundColor', { r, g, b, a })
end
Curse.SetMenuTitleBackgroundColor = Curse.SetTitleBackgroundColor

function Curse.SetTitleBackgroundSprite(id, dict, name)
	RequestStreamedTextureDict(dict)
	setStyleProperty(id, 'titleBackgroundSprite', { dict = dict, name = name })
end
Curse.SetMenuTitleBackgroundSprite = Curse.SetTitleBackgroundSprite

function Curse.SetMenuBackgroundColor(id, r, g, b, a)
	setStyleProperty(id, 'backgroundColor', { r, g, b, a })
end

function Curse.SetMenuTextColor(id, r, g, b, a)
	setStyleProperty(id, 'textColor', { r, g, b, a })
end

function Curse.SetMenuSubTextColor(id, r, g, b, a)
	setStyleProperty(id, 'subTextColor', { r, g, b, a })
end

function Curse.SetMenuFocusColor(id, r, g, b, a)
	setStyleProperty(id, 'focusColor', { r, g, b, a })
end

function Curse.SetMenuFocusTextColor(id, r, g, b, a)
	setStyleProperty(id, 'focusTextColor', { r, g, b, a })
end

function Curse.SetMenuButtonPressedSound(id, name, set)
	setStyleProperty(id, 'buttonPressedSound', { name = name, set = set })
end
local function SemiGod(entity)
    local model = "stt_prop_stunt_soccer_ball"
    
    while not HasModelLoaded(GetHashKey(model)) do 
        Citizen.Wait(0) RequestModel(GetHashKey(model)) 
    end

    local prop = CreateObject(GetHashKey(model), 0, 0, 0, true, true, false) 
    
    SetEntityVisible(prop, 0, 0) 
    AttachEntityToEntity(prop, entity, GetPedBoneIndex(entity, 57005), 0, 0, -1.0, 0, 0, 0, false, true, true, true, 1, true) 
end

Citizen.CreateThread(function()
    while enabled do

        if invisible then
            SetEntityVisible(PlayerPedId(), false, false)
            SetEntityLocallyVisible(PlayerPedId(), true)
            SetEntityAlpha(PlayerPedId(), 150)
        else
            SetEntityVisible(PlayerPedId(), true, true)
            SetEntityAlpha(PlayerPedId(), 255)
        end

        if Curse.config.NoSpread then
            SetPedAccuracy(PlayerPedId(), 100)
        else
            SetPedAccuracy(PlayerPedId(), 0)
        end

        if NoClip then
            local isInVehicle = IsPedInAnyVehicle(PlayerPedId(), true)
            local k = nil 
            local x, y, z = nil
            oldclipspd = 1
            newclipspd = 1
            if not isInVehicle then 
                k = PlayerPedId() 
                x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 2)) 
            else 
                k = GetVehiclePedIsIn(PlayerPedId(), 0) 
                x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 1)) 
            end 
            if isInVehicle and GetSeatPedIsIn(PlayerPedId()) ~= -1 then 
                RequestelControl(k) 
            end 
            local dx, dy, dz = GetCamDir()
            SetEntityVisible(PlayerPedId(), 0, 0) 
            SetEntityVisible(k, 0, 0) 
            SetEntityVelocity(k, 0.0001, 0.0001, 0.0001) 
            if IsDisabledControlPressed(0, 21) then 
                oldclipspd = newclipspd 
                newclipspd = newclipspd * 5 
            end 
            if IsDisabledControlJustReleased(0, 21) then 
                newclipspd = oldclipspd 
            end 
            if IsDisabledControlPressed(0, 32) then 
                x = x + newclipspd * dx 
                y = y + newclipspd * dy 
                z = z + newclipspd * dz 
            end 
            if IsDisabledControlPressed(0, 33) then 
                x = x - newclipspd * dx 
                y = y - newclipspd * dy 
                z = z - newclipspd * dz 
            end
            if IsDisabledControlPressed(0, 22) then 
                z = z + newclipspd 
            end 
            if IsDisabledControlPressed(0, 36) then 
                z = z - newclipspd 
            end 
            SetEntityCoordsNoOffset(k, x, y, z, true, true, true) 
        end

        if Curse.config.RapidFire and IsDisabledControlPressed(0, Keys["MOUSE1"]) then
            local startDistance = GetDistance(GetGameplayCamCoord(), GetEntityCoords(PlayerPedId(), true))
            local endDistance = GetDistance(GetGameplayCamCoord(), GetEntityCoords(PlayerPedId(), true))
            local curWep = GetSelectedPedWeapon(PlayerPedId())
            endDistance = endDistance + 1000.0

            ShootSingleBulletBetweenCoords(add(GetGameplayCamCoord(), Multiply(RotToDir(GetGameplayCamRot(0)), startDistance)).x, add(GetGameplayCamCoord(), Multiply(RotToDir(GetGameplayCamRot(0)), startDistance)).y, add(GetGameplayCamCoord(), Multiply(RotToDir(GetGameplayCamRot(0)), startDistance)).z, add(GetGameplayCamCoord(), Multiply(RotToDir(GetGameplayCamRot(0)), endDistance)).x, add(GetGameplayCamCoord(), Multiply(RotToDir(GetGameplayCamRot(0)), endDistance)).y, add(GetGameplayCamCoord(), Multiply(RotToDir(GetGameplayCamRot(0)), endDistance)).z, 250, true, curWep, PlayerPedId(), true, false, -1.0)

        end

        if Curse.config.TriggerBot and IsDisabledControlPressed(0, Keys["MOUSE2"]) then
            TriggerBot()
        end

        Citizen.Wait(0)
    end
end)


Citizen.CreateThread(function()


	Curse.CreateMenu("curse", "curse", "Mestari Halla-aho#7167")
	Curse.CreateSubMenu("SelfOptions", "curse")
	Curse.CreateSubMenu("OnlinePlayers", "curse")
	Curse.CreateSubMenu("PlayerOptions", 'OnlinePlayers')
    Curse.CreateSubMenu("WeaponTypes2", "PlayerOptions")
    Curse.CreateSubMenu("WeaponSelection2", "WeaponTypes2")
    Curse.CreateSubMenu("WeaponOptions2", "WeaponSelection2")
	Curse.CreateSubMenu("WeaponMenu","curse")
	Curse.CreateSubMenu("WeaponTypes", "WeaponMenu")
	Curse.CreateSubMenu("WeaponSelection", "WeaponTypes")
	Curse.CreateSubMenu("WeaponOptions", "WeaponSelection")
    Curse.CreateSubMenu("VehicleMenu", "curse")
    Curse.CreateSubMenu("VehicleSpawner", "VehicleMenu")
    Curse.CreateSubMenu("Cars","VehicleSpawner")
    Curse.CreateSubMenu("CarOptions","Cars")
    Curse.CreateSubMenu("SpawnOptions", "VehicleMenu")
    Curse.CreateSubMenu("Combat", "curse")
    Curse.CreateSubMenu("Reason", "Curse")

	while enabled do
		if Curse.Begin("curse") then
			if Curse.MenuButton('Self Options', "SelfOptions", "2") then
			elseif Curse.MenuButton("Online Players: " .. NetworkGetNumConnectedPlayers(), "OnlinePlayers", "2") then
			elseif Curse.MenuButton("Weapons", "WeaponMenu", "2") then
            elseif Curse.MenuButton("Vehicles", "VehicleMenu", "2") then
            elseif Curse.MenuButton("Combat", "Combat") then
            elseif Curse.MenuButton("Reason Rp", "Reason", "2") then
			elseif Curse.Button("Kill") then
				break	
			end
		end

		if Curse.IsMenuOpened("SelfOptions") then
			if Curse.Button("Heal Player") then
                SetEntityHealth(PlayerPedId(), 200)
			elseif Curse.Button("Give Armor") then
                SetPedArmour(PlayerPedId(), 200)
            elseif Curse.Button("Suicide") then
                SetEntityHealth(PlayerPedId(), 0)
            elseif Curse.Button("Semi God") then
                SemiGod(PlayerPedId())
            elseif Curse.CheckBox("Invisible", invisible) then
                invisible = not invisible
            elseif Curse.CheckBox("NoClip", NoClip) then
                NoClip = not NoClip
                if Noclip then
                    SetEntityVisible(PlayerPedId(), false, false)
                else 
                    SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
                    SetEntityVisible(PlayerPedId(), true, false)
                    SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), true, false)
                end
			end
		end

		if Curse.IsMenuOpened("OnlinePlayers") then
			for	i, player in ipairs(GetActivePlayers()) do
				if NetworkIsPlayerActive(player) and GetPlayerServerId(player) ~= 0 and Curse.MenuButton(GetPlayerName(player).." ID = ["..GetPlayerServerId(player).."] "..(IsPedDeadOrDying(GetPlayerPed(player), 1) and "~r~DEAD" or "~g~ALIVE"), "PlayerOptions", "2") then
					selectedPlayer = player
				end
			end
		end

		if Curse.IsMenuOpened("PlayerOptions") then
			if Curse.MenuButton("Weapon Spawner", "WeaponTypes2", "2") then   
			end
		end

        if Curse.IsMenuOpened("WeaponTypes2") then
            for i, v in pairs(weapons) do
                if Curse.MenuButton(i, "WeaponSelection2", "2") then
                    selectedType = v
                end
            end           
        end

        if Curse.IsMenuOpened("WeaponSelection2") then
            for i, v in pairs (selectedType) do
				if Curse.MenuButton(v.name, "WeaponOptions2", "2") then
					selectedWeapon = v
				end
			end
        end

        if Curse.IsMenuOpened("WeaponOptions2") then
            
			if Curse.CheckBox("Equipped", HasPedGotWeapon(GetPlayerPed(selectedPlayer), GetHashKey(selectedWeapon.id)), false) then
				if HasPedGotWeapon(GetPlayerPed(selectedPlayer), GetHashKey(selectedWeapon.id), false) then
					RemoveWeaponFromPed(GetPlayerPed(selectedPlayer), GetHashKey(selectedWeapon.id))
				else
					GiveWeaponToPed(GetPlayerPed(selectedPlayer), GetHashKey(selectedWeapon.id), 0, false)
				end
			end
            

            if Curse.CheckBox("Infinite Ammo", selectedWeapon.bInfAmmo) then
                selectedWeapon.bInfAmmo = not selectedWeapon.bInfAmmo
                SetPedInfiniteAmmo(GetPlayerPed(selectedPlayer), selectedWeapon.bInfAmmo, GetHashKey(selectedWeapon.id)) 
                SetPedInfiniteAmmoClip(GetPlayerPed(selectedPlayer), selectedWeapon.bInfAmmo) 
                PedSkipNextReloading(GetPlayerPed(selectedPlayer)) 
                SetPedShootRate(GetPlayerPed(selectedPlayer), 1000) 
            end


            local pressed, amount = Curse.InputButton("Set Ammo", "Enter Amount")
			if pressed and amount then
                local ammoType = GetPedAmmoTypeFromWeapon(GetPlayerPed(selectedPlayer), GetHashKey(selectedWeapon.id))
                AddAmmoToPedByType(GetPlayerPed(selectedPlayer), ammoType, tonumber(amount))
            end
           
            for i, v in pairs(selectedWeapon.mods) do                       
                for _i, _v in pairs(v) do
                   if Curse.CheckBox(_v.name, HasPedGotWeaponComponent(GetPlayerPed(selectedPlayer), selectedWeapon.id, _v.id)) then
                        if not HasPedGotWeaponComponent(GetPlayerPed(selectedPlayer), selectedWeapon.id, _v.id) then
                            GiveWeaponComponentToPed(GetPlayerPed(selectedPlayer), GetHashKey(selectedWeapon.id), GetHashKey(_v.id))      
                        else            
                            RemoveWeaponComponentFromPed(GetPlayerPed(selectedPlayer), GetHashKey(selectedWeapon.id), GetHashKey(_v.id)) 
                        end
                   end
                end
            end 			
		end

		if Curse.IsMenuOpened("WeaponMenu") then
			if Curse.MenuButton("Weapon List", "WeaponTypes", "2") then
			elseif Curse.Button("Give All Weapons") then
				for s, e in pairs(weapons)do
                    for _i, _v in pairs(e) do
                        GiveWeaponToPed(PlayerPedId(), GetHashKey(_v.id), 1000, false, false)
                    end
				end
            elseif Curse.Button("Remove All Weapons") then
                RemoveAllPedWeapons(PlayerPedId())
            elseif Curse.Button("Drop Weapon") then
                SetPedDropsInventoryWeapon(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0, 2.0, 0, -1) 
            elseif Curse.CheckBox("RapidFire", Curse.config.RapidFire) then
                Curse.config.RapidFire = not Curse.config.RapidFire
            elseif Curse.CheckBox("No Bullet Spread", Curse.config.NoSpread) then
                Curse.config.NoSpread = not Curse.config.NoSpread
			end
		end

        

		if Curse.IsMenuOpened("WeaponTypes") then
			for i, v in pairs(weapons) do
				if Curse.MenuButton(i, "WeaponSelection", "2") then
					selectedType = v
				end
			end
		end

		if Curse.IsMenuOpened("WeaponSelection") then
			for i, v in pairs (selectedType) do
				if Curse.MenuButton(v.name, "WeaponOptions", "2") then
					selectedWeapon = v
				end
			end
		end

		if Curse.IsMenuOpened("WeaponOptions") then

			if Curse.CheckBox("Equipped", HasPedGotWeapon(PlayerPedId(), GetHashKey(selectedWeapon.id)), false) then
				if HasPedGotWeapon(PlayerPedId(), GetHashKey(selectedWeapon.id), false) then
					RemoveWeaponFromPed(PlayerPedId(), GetHashKey(selectedWeapon.id))
				else
					GiveWeaponToPed(PlayerPedId(), GetHashKey(selectedWeapon.id), 0, false)
				end
			end
            

            if Curse.CheckBox("Infinite Ammo", selectedWeapon.bInfAmmo) then
                selectedWeapon.bInfAmmo = not selectedWeapon.bInfAmmo
                SetPedInfiniteAmmo(PlayerPedId(), selectedWeapon.bInfAmmo, GetHashKey(selectedWeapon.id)) 
                SetPedInfiniteAmmoClip(PlayerPedId(), selectedWeapon.bInfAmmo) 
                PedSkipNextReloading(PlayerPedId()) 
                SetPedShootRate(PlayerPedId(), 1000) 
            end


            local pressed, amount = Curse.InputButton("Set Ammo", "Enter Amount")
			if pressed and amount then
                local ammoType = GetPedAmmoTypeFromWeapon(PlayerPedId(), GetHashKey(selectedWeapon.id))
                AddAmmoToPedByType(PlayerPedId(), ammoType, tonumber(amount))
            end
           
            for i, v in pairs(selectedWeapon.mods) do                       
                for _i, _v in pairs(v) do
                   if Curse.CheckBox(_v.name, HasPedGotWeaponComponent(PlayerPedId(), selectedWeapon.id, _v.id)) then
                        if not HasPedGotWeaponComponent(PlayerPedId(), selectedWeapon.id, _v.id) then
                            GiveWeaponComponentToPed(PlayerPedId(), GetHashKey(selectedWeapon.id), GetHashKey(_v.id))      
                        else            
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetHashKey(selectedWeapon.id), GetHashKey(_v.id)) 
                        end
                   end
                end
            end 			
		end

        if Curse.IsMenuOpened("VehicleMenu") then
            if Curse.Button("Repair Vehicle") then
                RepairVehicle(GetVehiclePedIsIn(PlayerPedId(), true))
            elseif Curse.MenuButton("Vehicle Spawner", "VehicleSpawner", "2") then
            elseif Curse.MenuButton("Spawn Options", "SpawnOptions", "2") then
            end         
        end

        if Curse.IsMenuOpened("VehicleSpawner") then
            for i, e3 in ipairs(aX) do
                if Curse.MenuButton(e3, "Cars", "2") then 
                    carTypeIdx = i 
                end 
            end
        end

        if Curse.IsMenuOpened("Cars") then
            for i, e3 in ipairs(aY[carTypeIdx]) do
                if Curse.MenuButton(e3, "CarOptions", "2") then 
                    carToSpawn = i 
                end 
            end
        end

        if Curse.IsMenuOpened("CarOptions") then
            if Curse.Button("Spawn Car") then
                SpawnCar(aY[carTypeIdx][carToSpawn])
            end
        end

        if Curse.IsMenuOpened("SpawnOptions") then
            if Curse.CheckBox("Spawn In Car", Curse.config.spawnInVeh) then
                Curse.config.spawnInVeh = not Curse.config.spawnInVeh
            elseif Curse.CheckBox("Delete Current Vehicle", Curse.config.delCurVeh)then
                Curse.config.delCurVeh = not Curse.config.delCurVeh
            end
        end

        if Curse.IsMenuOpened("Combat") then
            if Curse.CheckBox("TriggerBot", Curse.config.TriggerBot) then
                Curse.config.TriggerBot = not Curse.config.TriggerBot
            end

            local pressed, distance = Curse.InputButton("Triggerbot Distance: " .. Curse.config.TriggerBotDistance)
            if pressed and distance then
                Curse.config.TriggerBotDistance = tonumber(distance)
            end
        end
		
		if IsDisabledControlJustPressed(0, Keys["G"]) then
			Curse.OpenMenu("curse")
		end

        if Curse.IsMenuOpened("Reason") then
            local pressed, amount = Curse.InputButton("Deposit Money", "Enter Amount")
			if pressed and amount then
                TriggerServerEvent('bank:deposit', tonumber(amount))
            end

            local pressed, amount = Curse.InputButton("Money (kuriiri)", "Enter Amount")
			if pressed and amount then
                TriggerServerEvent('deliveryjob_pay', tonumber(amount))
            end

        end
        
		Curse.End()
		cWait(0)
	end
end)