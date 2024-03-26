# PAWOW Addon & Config

My addon & config for [Project Ascension](https://ascension.gg)

## ElvUI Profile

```lua
{
    ["databars"] = {
        ["experience"] = {
            ["orientation"] = "HORIZONTAL",
            ["height"] = 10,
            ["textSize"] = 12,
            ["width"] = 350,
        },
        ["reputation"] = {
            ["enable"] = true,
            ["height"] = 10,
            ["orientation"] = "HORIZONTAL",
            ["width"] = 222,
        },
    },
    ["currentTutorial"] = 1,
    ["general"] = {
        ["totems"] = {
            ["growthDirection"] = "HORIZONTAL",
            ["size"] = 50,
            ["spacing"] = 8,
        },
        ["fontSize"] = 14,
        ["topPanel"] = false,
        ["afk"] = false,
        ["watchFrameHeight"] = 400,
        ["minimap"] = {
            ["size"] = 220,
        },
        ["bottomPanel"] = false,
        ["backdropfadecolor"] = {
            ["r"] = 0.054,
            ["g"] = 0.054,
            ["b"] = 0.054,
        },
        ["valuecolor"] = {
            ["r"] = 0.99607843137255,
            ["g"] = 0.48235294117647,
            ["b"] = 0.17254901960784,
        },
        ["reminder"] = {
            ["font"] = "PT Sans Narrow",
        },
        ["fontStyle"] = "NONE",
        ["autoRoll"] = true,
    },
    ["enhanced"] = {
        ["map"] = {
            ["fogClear"] = {
                ["enable"] = true,
            },
        },
        ["general"] = {
            ["pvpAutoRelease"] = true,
            ["altBuyMaxStack"] = true,
            ["showQuestLevel"] = true,
            ["trainAllSkills"] = true,
            ["alreadyKnown"] = true,
        },
        ["tooltip"] = {
            ["itemQualityBorderColor"] = true,
            ["progressInfo"] = {
                ["enable"] = true,
            },
            ["tooltipIcon"] = {
                ["enable"] = true,
            },
        },
        ["equipment"] = {
            ["enable"] = true,
            ["durability"] = {
                ["enable"] = true,
            },
        },
        ["nameplates"] = {
            ["guild"] = {
                ["colors"] = {
                    ["guild"] = {
                        ["b"] = 0.25098039215686,
                        ["r"] = 0.25098039215686,
                    },
                },
            },
        },
    },
    ["bags"] = {
        ["countFontSize"] = 14,
        ["countFont"] = "PT Sans Narrow",
        ["itemLevelFont"] = "PT Sans Narrow",
        ["countFontOutline"] = "NONE",
        ["bankSize"] = 42,
        ["itemLevelFontSize"] = 14,
        ["itemLevelFontOutline"] = "NONE",
        ["bankWidth"] = 472,
        ["showBindType"] = true,
        ["bagWidth"] = 472,
        ["bagSize"] = 42,
    },
    ["hideTutorial"] = 1,
    ["chat"] = {
        ["fontSize"] = 14,
        ["panelHeight"] = 236,
        ["panelColorConverted"] = true,
        ["tapFontSize"] = 14,
        ["panelWidth"] = 472,
    },
    ["layoutSet"] = "dpsCaster",
    ["movers"] = {
        ["ElvBar_Pet"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,243",
        ["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,138",
        ["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
        ["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
        ["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,243",
        ["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,248",
        ["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,1,127",
        ["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,203",
        ["TimeManagerFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-243",
        ["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
        ["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,0,42",
        ["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-341,138",
        ["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,165",
        ["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-245",
        ["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-75,-326",
        ["TempEnchantMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-257",
        ["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,485,4",
        ["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
        ["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
        ["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,769",
        ["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,86",
        ["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,59",
        ["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-77,242",
        ["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,418,-186",
        ["PvPMover"] = "TOP,ElvUIParent,TOP,0,-32",
        ["ElvBar_Totem"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-376,280",
        ["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-341,99",
        ["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
        ["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,248",
        ["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
        ["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-4",
        ["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,99",
    },
    ["tooltip"] = {
        ["fontSize"] = 14,
        ["healthBar"] = {
            ["height"] = 12,
            ["font"] = "PT Sans Narrow",
            ["fontOutline"] = "NONE",
        },
        ["headerFontSize"] = 14,
        ["textFontSize"] = 14,
        ["guildRanks"] = false,
        ["itemCount"] = "NONE",
        ["smallTextFontSize"] = 14,
    },
    ["unitframe"] = {
        ["fontSize"] = 12,
        ["colors"] = {
            ["auraBarBuff"] = {
                ["r"] = 0.1,
                ["g"] = 0.1,
                ["b"] = 0.1,
            },
            ["castColor"] = {
                ["r"] = 0.1,
                ["g"] = 0.1,
                ["b"] = 0.1,
            },
            ["health"] = {
                ["r"] = 0.1,
                ["g"] = 0.1,
                ["b"] = 0.1,
            },
        },
        ["fontOutline"] = "NONE",
        ["font"] = "PT Sans Narrow",
        ["thinBorders"] = true,
        ["units"] = {
            ["pet"] = {
                ["debuffs"] = {
                    ["anchorPoint"] = "TOPRIGHT",
                    ["enable"] = true,
                },
                ["portrait"] = {
                    ["camDistanceScale"] = 2,
                },
                ["disableTargetGlow"] = false,
                ["health"] = {
                    ["frequentUpdates"] = true,
                },
                ["width"] = 270,
                ["infoPanel"] = {
                    ["height"] = 14,
                },
                ["castbar"] = {
                    ["iconSize"] = 32,
                    ["width"] = 270,
                },
            },
            ["targettargettarget"] = {
                ["health"] = {
                    ["frequentUpdates"] = true,
                },
            },
            ["pettarget"] = {
                ["health"] = {
                    ["frequentUpdates"] = true,
                },
            },
            ["arena"] = {
                ["health"] = {
                    ["frequentUpdates"] = true,
                },
            },
            ["focustarget"] = {
                ["health"] = {
                    ["frequentUpdates"] = true,
                },
            },
            ["targettarget"] = {
                ["debuffs"] = {
                    ["anchorPoint"] = "TOPRIGHT",
                    ["enable"] = false,
                },
                ["power"] = {
                    ["enable"] = false,
                },
                ["disableMouseoverGlow"] = true,
                ["width"] = 270,
                ["health"] = {
                    ["frequentUpdates"] = true,
                },
                ["threatStyle"] = "GLOW",
                ["raidicon"] = {
                    ["attachTo"] = "LEFT",
                    ["enable"] = false,
                    ["xOffset"] = 2,
                    ["yOffset"] = 0,
                },
            },
            ["player"] = {
                ["health"] = {
                    ["attachTextTo"] = "InfoPanel",
                    ["frequentUpdates"] = true,
                },
                ["classbar"] = {
                    ["height"] = 14,
                },
                ["power"] = {
                    ["attachTextTo"] = "InfoPanel",
                    ["height"] = 22,
                },
                ["castbar"] = {
                    ["insideInfoPanel"] = false,
                    ["height"] = 40,
                    ["width"] = 407,
                },
                ["disableMouseoverGlow"] = true,
                ["infoPanel"] = {
                    ["enable"] = true,
                },
                ["height"] = 82,
                ["buffs"] = {
                    ["countFontOutline"] = "THICKOUTLINE",
                },
            },
            ["raid40"] = {
                ["enable"] = false,
                ["rdebuffs"] = {
                    ["font"] = "PT Sans Narrow",
                },
            },
            ["focus"] = {
                ["width"] = 270,
                ["castbar"] = {
                    ["width"] = 270,
                },
                ["health"] = {
                    ["frequentUpdates"] = true,
                },
            },
            ["target"] = {
                ["castbar"] = {
                    ["height"] = 40,
                    ["width"] = 407,
                    ["insideInfoPanel"] = false,
                },
                ["power"] = {
                    ["height"] = 22,
                    ["attachTextTo"] = "InfoPanel",
                },
                ["disableMouseoverGlow"] = true,
                ["width"] = 271,
                ["infoPanel"] = {
                    ["enable"] = true,
                },
                ["orientation"] = "LEFT",
                ["health"] = {
                    ["attachTextTo"] = "InfoPanel",
                    ["frequentUpdates"] = true,
                },
                ["height"] = 82,
                ["name"] = {
                    ["attachTextTo"] = "InfoPanel",
                    ["text_format"] = "[namecolor][name]",
                },
            },
            ["raid"] = {
                ["rdebuffs"] = {
                    ["font"] = "PT Sans Narrow",
                    ["size"] = 30,
                    ["xOffset"] = 30,
                    ["yOffset"] = 25,
                },
                ["growthDirection"] = "RIGHT_UP",
                ["resurrectIcon"] = {
                    ["attachTo"] = "BOTTOMRIGHT",
                },
                ["numGroups"] = 8,
                ["width"] = 92,
                ["infoPanel"] = {
                    ["enable"] = true,
                },
                ["health"] = {
                    ["frequentUpdates"] = true,
                },
                ["name"] = {
                    ["attachTextTo"] = "InfoPanel",
                    ["xOffset"] = 2,
                    ["position"] = "BOTTOMLEFT",
                },
                ["visibility"] = "[@raid6,noexists] hide;show",
            },
            ["party"] = {
                ["rdebuffs"] = {
                    ["font"] = "PT Sans Narrow",
                },
                ["power"] = {
                    ["height"] = 13,
                },
                ["width"] = 231,
                ["height"] = 74,
            },
            ["boss"] = {
                ["debuffs"] = {
                    ["numrows"] = 1,
                    ["sizeOverride"] = 27,
                    ["maxDuration"] = 300,
                    ["yOffset"] = -16,
                },
                ["portrait"] = {
                    ["camDistanceScale"] = 2,
                    ["width"] = 45,
                },
                ["castbar"] = {
                    ["width"] = 246,
                },
                ["width"] = 246,
                ["infoPanel"] = {
                    ["height"] = 17,
                },
                ["health"] = {
                    ["frequentUpdates"] = true,
                },
                ["height"] = 60,
                ["buffs"] = {
                    ["maxDuration"] = 300,
                    ["sizeOverride"] = 27,
                    ["yOffset"] = 16,
                },
            },
        },
    },
    ["version"] = 7.12,
    ["actionbar"] = {
        ["bar3"] = {
            ["backdrop"] = true,
            ["buttons"] = 12,
            ["buttonsPerRow"] = 12,
            ["buttonsize"] = 31,
            ["visibility"] = "[vehicleui] hide; show",
        },
        ["bar6"] = {
            ["enabled"] = true,
            ["backdrop"] = true,
            ["visibility"] = "[vehicleui] hide; show",
            ["buttonsize"] = 31,
        },
        ["fontOutline"] = "THICKOUTLINE",
        ["bar2"] = {
            ["enabled"] = true,
            ["backdrop"] = true,
            ["buttonsize"] = 31,
            ["visibility"] = "[vehicleui] hide; show",
        },
        ["bar1"] = {
            ["buttonsize"] = 31,
            ["backdrop"] = true,
        },
        ["bar4"] = {
            ["point"] = "BOTTOMLEFT",
            ["buttonsPerRow"] = 12,
            ["visibility"] = "[vehicleui] hide; show",
            ["buttonsize"] = 31,
        },
        ["bar5"] = {
            ["backdrop"] = true,
            ["buttons"] = 12,
            ["buttonsPerRow"] = 12,
            ["buttonsize"] = 31,
            ["visibility"] = "[vehicleui] hide; show",
        },
        ["font"] = "PT Sans Narrow",
        ["backdropSpacingConverted"] = true,
    },
    ["nameplates"] = {
        ["threat"] = {
            ["indicator"] = true,
        },
        ["plateSize"] = {
            ["friendlyWidth"] = 250,
        },
        ["units"] = {
            ["TARGET"] = {
                ["arrowScale"] = 0.2,
                ["arrow"] = "ArrowUp",
                ["classpower"] = {
                    ["enable"] = true,
                },
                ["arrowSpacing"] = 8,
                ["glowStyle"] = "style5",
            },
        },
    },
    ["auras"] = {
        ["debuffs"] = {
            ["countFontSize"] = 14,
            ["durationFontSize"] = 14,
            ["size"] = 40,
        },
        ["buffs"] = {
            ["countFontSize"] = 14,
            ["durationFontSize"] = 14,
            ["size"] = 40,
        },
        ["font"] = "PT Sans Narrow",
    },
    ["addOnSkins"] = {
        ["embed"] = {
            ["leftWindow"] = "Details",
            ["belowTopTab"] = true,
            ["embedType"] = "SINGLE",
        },
        ["recountTemplateGloss"] = true,
    },
    ["datatexts"] = {
        ["fontSize"] = 14,
    },
}::profile::devzero - Ascension
```
