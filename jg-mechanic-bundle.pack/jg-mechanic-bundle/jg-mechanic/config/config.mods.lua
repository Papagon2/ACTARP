---------------------------------------------------------------------------------------
---------------------------------- GTA MODIFICATIONS ----------------------------------
---------------------------------------------------------------------------------------
-- All the base GTA modifications. You *probably* won't need to modify this file
-- unless you a nerd and know what you are going. In that case, have fun <3
---------------------------------------------------------------------------------------

Config.Mods = {}

Config.Mods.ItemsRequired = {
  repair = { itemName = "repair_kit", removeItem = true },
  performance = { itemName = "performance_part", removeItem = true },
  cosmetics = { itemName = "cosmetic_part", removeItem = true },
  stance = { itemName = "stancing_kit", removeItem = false },
  respray = { itemName = "respray_kit", removeItem = true },
  wheels = { itemName = "vehicle_wheels", removeItem = true },
  neonLights = { itemName = "lighting_controller", removeItem = true },
  headlights = { itemName = "lighting_controller", removeItem = true },
  tyreSmoke = { itemName = "tyre_smoke_kit", removeItem = true },
  bulletproofTyres = { itemName = "bulletproof_tyres", removeItem = true },
  extras = { itemName = "extras_kit", removeItem = true }
}

Config.Mods.Performance = {
  { modType = 11, name = "Engine" },
  { modType = 12, name = "Brakes" },
  { modType = 13, name = "Transmission" },
  { modType = 15, name = "Suspension" },
  { modType = 16, name = "Armour" },
  { modType = 18, name = "Turbocharging", toggle = true } 
}

Config.Mods.Cosmetics = {
  { modType = 0, name = "Spoilers" },
  { modType = 1, name = "Front Bumper" },
  { modType = 2, name = "Rear Bumper" },
  { modType = 3, name = "Side Skirt" },
  { modType = 4, name = "Exhaust" },
  { modType = 5, name = "Chassis" },
  { modType = 6, name = "Grill" },
  { modType = 7, name = "Bonnet" },
  { modType = 8, name = "Left Wing" },
  { modType = 9, name = "Right Wing" },
  { modType = 10, name = "Roof" },
  { modType = 14, name = "Horn" },
  { modType = 19, name = "Subwoofer" },
  { modType = 21, name = "Hydraulics" },
  { modType = 25, name = "Plate Holders" },
  { modType = 26, name = "Vanity Plate" },
  { modType = 27, name = "Trim Design" },
  { modType = 28, name = "Ornaments" },
  { modType = 29, name = "Dashboard" },
  { modType = 30, name = "Dial Design" },
  { modType = 31, name = "Door Speaker" },
  { modType = 32, name = "Seats" },
  { modType = 33, name = "Steering Wheel" },
  { modType = 34, name = "Shift Lever" },
  { modType = 35, name = "Plaques" },
  { modType = 36, name = "ICE" },
  { modType = 37, name = "Trunk" },
  { modType = 38, name = "Hydraulics" },
  { modType = 39, name = "Engine Block" },
  { modType = 40, name = "Air Filter/Boost" },
  { modType = 41, name = "Struts" },
  { modType = 42, name = "Arch Cover" },
  { modType = 43, name = "Aerials" },
  { modType = 44, name = "Trim" },
  { modType = 45, name = "Tank" },
  { modType = 46, name = "Door Left" },
  { modType = 47, name = "Door Right" },
  { modType = 48, name = "Stickers" },
  { modType = 49, name = "Lightbar" },

  -- Named cosmetics
  { modType = "LIVERY", name = "Livery" },
  { modType = "LIVERY_ROOF", name = "Livery Roof" },
  { modType = "PLATE_INDEX", name = "Plate Index" },
  { modType = "WINDOW_TINT", name = "Window Tint" }
}

Config.Mods.PlateIndexes = {
  { modIndex = 0, name = "Blue On White" },
  { modIndex = 1, name = "Yellow On Black" },
  { modIndex = 2, name = "Yellow On Blue" },
  { modIndex = 3, name = "Blue On White" },
  { modIndex = 4, name = "Blue On White" },
  { modIndex = 5, name = "North Yankton" }, 

  -- mp2023_02 (Chop Shop) only
  { modIndex = 6, name = "eCola" },
  { modIndex = 7, name = "Las Venturas" },
  { modIndex = 8, name = "Liberty City" },
  { modIndex = 9, name = "Los Santos Car Meet" },
  { modIndex = 10, name = "Los Santos Panic" },
  { modIndex = 11, name = "Los Santos Pounders" },
  { modIndex = 12, name = "Sprunk" }
}

Config.Mods.WindowTints = {
  { modIndex = 0, name = "No Tint" },
  { modIndex = 3, name = "Lightsmoke" },
  { modIndex = 2, name = "Darksmoke" },
  { modIndex = 1, name = "Pure Black" }
}

Config.Mods.WheelTypes = {
  { modIndex = 0, name = "Sport" },
  { modIndex = 1, name = "Muscle" },
  { modIndex = 2, name = "Lowrider" },
  { modIndex = 3, name = "SUV" },
  { modIndex = 4, name = "Offroad" },
  { modIndex = 5, name = "Tuner" },
  { modIndex = 6, name = "Bike" },
  { modIndex = 7, name = "High End" },
  { modIndex = 8, name = "Benny's Original" },
  { modIndex = 9, name = "Benny's Bespoke" },
  { modIndex = 10, name = "Open Wheel" },
  { modIndex = 11, name = "Street" },
  { modIndex = 12, name = "Track" },
}

Config.Mods.Horns = {
  { modIndex = -1, name = "Stock", musical = false },
  { modIndex = 0,  name = "Truck Horn", musical = false },
  { modIndex = 1,  name = "Cop Horn", musical = false },
  { modIndex = 2,  name = "Clown Horn", musical = false },
  { modIndex = 3,  name = "Musical Horn 1", musical = true },
  { modIndex = 4,  name = "Musical Horn 2", musical = true },
  { modIndex = 5,  name = "Musical Horn 3", musical = true },
  { modIndex = 6,  name = "Musical Horn 4", musical = true },
  { modIndex = 7,  name = "Musical Horn 5", musical = true },
  { modIndex = 8,  name = "Sad Trombone", musical = true },
  { modIndex = 9,  name = "Classical Horn 1", musical = true },
  { modIndex = 10, name = "Classical Horn 2", musical = true },
  { modIndex = 11, name = "Classical Horn 3", musical = true },
  { modIndex = 12, name = "Classical Horn 4", musical = true },
  { modIndex = 13, name = "Classical Horn 5", musical = true },
  { modIndex = 14, name = "Classical Horn 6", musical = true },
  { modIndex = 15, name = "Classical Horn 7", musical = true },
  { modIndex = 16, name = "Scale - Do", musical = false },
  { modIndex = 17, name = "Scale - Re", musical = false },
  { modIndex = 18, name = "Scale - Mi", musical = false },
  { modIndex = 19, name = "Scale - Fa", musical = false },
  { modIndex = 20, name = "Scale - Sol", musical = false },
  { modIndex = 21, name = "Scale - La", musical = false },
  { modIndex = 22, name = "Scale - Ti", musical = false },
  { modIndex = 23, name = "Scale - Do", musical = false },
  { modIndex = 24, name = "Jazz Horn 1", musical = true },
  { modIndex = 25, name = "Jazz Horn 2", musical = true },
  { modIndex = 26, name = "Jazz Horn 3", musical = true },
  { modIndex = 27, name = "Jazz Horn Loop", musical = true },
  { modIndex = 28, name = "Star Spangled Banner 1", musical = true },
  { modIndex = 29, name = "Star Spangled Banner 2", musical = true },
  { modIndex = 30, name = "Star Spangled Banner 3", musical = true },
  { modIndex = 31, name = "Star Spangled Banner 4", musical = true },
  { modIndex = 32, name = "Classical Horn 8 Loop", musical = true },
  { modIndex = 33, name = "Classical Horn 9 Loop", musical = true },
  { modIndex = 34, name = "Classical Horn 10 Loop", musical = true },
  { modIndex = 35, name = "Classical Horn 8", musical = true },
  { modIndex = 36, name = "Classical Horn 9", musical = true },
  { modIndex = 37, name = "Classical Horn 10", musical = true },
  { modIndex = 38, name = "Funeral Loop", musical = true },
  { modIndex = 39, name = "Funeral", musical = true },
  { modIndex = 40, name = "Spooky Loop", musical = true },
  { modIndex = 41, name = "Spooky", musical = true },
  { modIndex = 42, name = "San Andreas Loop", musical = true },
  { modIndex = 43, name = "San Andreas", musical = true },
  { modIndex = 44, name = "Liberty City Loop", musical = true },
  { modIndex = 45, name = "Liberty City", musical = true },
  { modIndex = 46, name = "Festive 1 Loop", musical = true },
  { modIndex = 47, name = "Festive 1", musical = true },
  { modIndex = 48, name = "Festive 2 Loop", musical = true },
  { modIndex = 49, name = "Festive 2", musical = true },
  { modIndex = 50, name = "Festive 3 Loop", musical = true },
  { modIndex = 51, name = "Festive 3", musical = true },
  { modIndex = 52, name = "Air Horn Low Loop", musical = false },
  { modIndex = 53, name = "Air Horn Low", musical = false },
  { modIndex = 54, name = "Air Horn Medium Loop", musical = false },
  { modIndex = 55, name = "Air Horn Medium", musical = false },
  { modIndex = 56, name = "Air Horn High Loop", musical = false },
  { modIndex = 57, name = "Air Horn High", musical = false },
}

Config.Mods.Colours = {
  { name = "Primary", paintTypeKey = "paintType1", colourKey = "color1" },
  { name = "Secondary", paintTypeKey = "paintType2", colourKey = "color2" },
  { name = "Pearlescent", colourIdKey = "pearlescentColor" },
  { name = "Dashboard", colourIdKey = "dashboardColor" },
  { name = "Interior", colourIdKey = "interiorColor" },
  { name = "Wheels", colourIdKey = "wheelColor" },
}

-- You can rename but NOT re-order these
Config.Mods.RgbPaintFinishes = {
  "Normal",
  "Metallic",
  "Pearl",
  "Matte",
  "Metal",
  "Chrome"
}

Config.Mods.GtaColours = {
  Metallic = {
    { modIndex = 0, name = "Black",                    hex = "0d1116" },
    { modIndex = 1, name = "Graphite Black",           hex = "1c1d21" },
    { modIndex = 2, name = "Black Steal",              hex = "32383d" },
    { modIndex = 3, name = "Dark Silver",              hex = "454b4f" },
    { modIndex = 4, name = "Silver",                   hex = "999da0" },
    { modIndex = 5, name = "Blue Silver",              hex = "c2c4c6" },
    { modIndex = 6, name = "Steel Gray",               hex = "979a97" },
    { modIndex = 7, name = "Shadow Silver",            hex = "637380" },
    { modIndex = 8, name = "Stone Silver",             hex = "63625c" },
    { modIndex = 9, name = "Midnight Silver",          hex = "3c3f47" },
    { modIndex = 10, name = "Gun Metal",               hex = "444e54" },
    { modIndex = 11, name = "Anthracite Grey",         hex = "1d2129" },
    { modIndex = 27, name = "Red",                     hex = "c00e1a" },
    { modIndex = 28, name = "Torino Red",              hex = "da1918" },
    { modIndex = 29, name = "Formula Red",             hex = "b6111b" },
    { modIndex = 30, name = "Blaze Red",               hex = "a51e23" },
    { modIndex = 31, name = "Graceful Red",            hex = "7b1a22" },
    { modIndex = 32, name = "Garnet Red",              hex = "8e1b1f" },
    { modIndex = 33, name = "Desert Red",              hex = "6f1818" },
    { modIndex = 34, name = "Cabernet Red",            hex = "49111d" },
    { modIndex = 35, name = "Candy Red",               hex = "b60f25" },
    { modIndex = 36, name = "Sunrise Orange",          hex = "d44a17" },
    { modIndex = 37, name = "Classic Gold",            hex = "c2944f" },
    { modIndex = 38, name = "Orange",                  hex = "f78616" },
    { modIndex = 49, name = "Dark Green",              hex = "132428" },
    { modIndex = 50, name = "Racing Green",            hex = "122e2b" },
    { modIndex = 51, name = "Sea Green",               hex = "12383c" },
    { modIndex = 52, name = "Olive Green",             hex = "31423f" },
    { modIndex = 53, name = "Green",                   hex = "155c2d" },
    { modIndex = 54, name = "Gasoline Blue Green",     hex = "1b6770" },
    { modIndex = 61, name = "Midnight Blue",           hex = "222e46" },
    { modIndex = 62, name = "Dark Blue",               hex = "233155" },
    { modIndex = 63, name = "Saxony Blue",             hex = "304c7e" },
    { modIndex = 64, name = "Blue",                    hex = "47578f" },
    { modIndex = 65, name = "Mariner Blue",            hex = "637ba7" },
    { modIndex = 66, name = "Harbor Blue",             hex = "394762" },
    { modIndex = 67, name = "Diamond Blue",            hex = "d6e7f1" },
    { modIndex = 68, name = "Surf Blue",               hex = "76afbe" },
    { modIndex = 69, name = "Nautical Blue",           hex = "345e72" },
    { modIndex = 70, name = "Bright Blue",             hex = "0b9cf1" },
    { modIndex = 71, name = "Purple Blue",             hex = "2f2d52" },
    { modIndex = 72, name = "Spinnaker Blue",          hex = "282c4d" },
    { modIndex = 73, name = "Ultra Blue",              hex = "2354a1" },
    { modIndex = 74, name = "Bright Blue",             hex = "6ea3c6" },
    { modIndex = 88, name = "Taxi Yellow",             hex = "ffcf20" },
    { modIndex = 89, name = "Race Yellow",             hex = "fbe212" },
    { modIndex = 90, name = "Bronze",                  hex = "916532" },
    { modIndex = 91, name = "Yellow Bird",             hex = "e0e13d" },
    { modIndex = 92, name = "Lime",                    hex = "98d223" },
    { modIndex = 93, name = "Champagne",               hex = "9b8c78" },
    { modIndex = 94, name = "Pueblo Beige",            hex = "503218" },
    { modIndex = 95, name = "Dark Ivory",              hex = "473f2b" },
    { modIndex = 96, name = "Choco Brown",             hex = "221b19" },
    { modIndex = 97, name = "Golden Brown",            hex = "653f23" },
    { modIndex = 98, name = "Light Brown",             hex = "775c3e" },
    { modIndex = 99, name = "Straw Beige",             hex = "ac9975" },
    { modIndex = 100, name = "Moss Brown",             hex = "6c6b4b" },
    { modIndex = 101, name = "Biston Brown",           hex = "402e2b" },
    { modIndex = 102, name = "Beechwood",              hex = "a4965f" },
    { modIndex = 103, name = "Dark Beechwood",         hex = "46231a" },
    { modIndex = 104, name = "Choco Orange",           hex = "752b19" },
    { modIndex = 105, name = "Beach Sand",             hex = "bfae7b" },
    { modIndex = 106, name = "Sun Bleeched Sand",      hex = "dfd5b2" },
    { modIndex = 107, name = "Cream",                  hex = "f7edd5" },
    { modIndex = 111, name = "White",                  hex = "fffff6" },
    { modIndex = 112, name = "Frost White",            hex = "eaeaea" },
    { modIndex = 125, name = "Securicor Green",        hex = "83c566" },
    { modIndex = 137, name = "Vermillion Pink",        hex = "df5891" },
    { modIndex = 141, name = "Black Blue",             hex = "0a0c17" },
    { modIndex = 142, name = "Black Purple",           hex = "0c0d18" },
    { modIndex = 143, name = "Black Red",              hex = "0e0d14" },
    { modIndex = 145, name = "Purple",                 hex = "621276" },
    { modIndex = 146, name = "V Dark Blue",            hex = "0b1421" },
    { modIndex = 150, name = "Lava Red",               hex = "bc1917" },
  },
  Matte = {
    { modIndex = 12, name = "Black",                   hex = "13181f" },
    { modIndex = 13, name = "Gray",                    hex = "26282a" },
    { modIndex = 14, name = "Light Grey",              hex = "515554" },
    { modIndex = 39, name = "Red",                     hex = "cf1f21" },
    { modIndex = 40, name = "Dark Red",                hex = "732021" },
    { modIndex = 41, name = "Orange",                  hex = "f27d20" },
    { modIndex = 42, name = "Yellow",                  hex = "ffc91f" },
    { modIndex = 55, name = "Lime Green",              hex = "66b81f" },
    { modIndex = 82, name = "Dark Blue",               hex = "1f2852" },
    { modIndex = 83, name = "Blue",                    hex = "253aa7" },
    { modIndex = 84, name = "Midnight Blue",           hex = "1c3551" },
    { modIndex = 128, name = "Green",                  hex = "4e6443" },
    { modIndex = 129, name = "Brown",                  hex = "bcac8f" },
    { modIndex = 131, name = "White",                  hex = "fcf9f1" },
    { modIndex = 148, name = "Purple",                 hex = "6b1f7b" },
    { modIndex = 149, name = "Dark Purple",            hex = "1e1d22" },
    { modIndex = 151, name = "Forest Green",           hex = "2d362a" },
    { modIndex = 152, name = "Olive Drab",             hex = "696748" },
    { modIndex = 153, name = "Desert Brown",           hex = "7a6c55" },
    { modIndex = 154, name = "Desert Tan",             hex = "c3b492" },
    { modIndex = 155, name = "Foilage Green",          hex = "5a6352" },
  },
  Util = {
    { modIndex = 15, name = "Black",                   hex = "151921" },
    { modIndex = 16, name = "Black Poly",              hex = "1e2429" },
    { modIndex = 17, name = "Dark Silver",             hex = "333a3c" },
    { modIndex = 18, name = "Silver",                  hex = "8c9095" },
    { modIndex = 19, name = "Gun Metal",               hex = "39434d" },
    { modIndex = 20, name = "Shadow Silver",           hex = "506272" },
    { modIndex = 43, name = "Red",                     hex = "9c1016" },
    { modIndex = 44, name = "Bright Red",              hex = "de0f18" },
    { modIndex = 45, name = "Garnet Red",              hex = "8f1e17" },
    { modIndex = 56, name = "Dark Green",              hex = "22383e" },
    { modIndex = 57, name = "Green",                   hex = "1d5a3f" },
    { modIndex = 75, name = "Dark Blue",               hex = "112552" },
    { modIndex = 76, name = "Midnight Blue",           hex = "1b203e" },
    { modIndex = 77, name = "Blue",                    hex = "275190" },
    { modIndex = 78, name = "Sea Foam Blue",           hex = "608592" },
    { modIndex = 79, name = "Lightning Blue",          hex = "2446a8" },
    { modIndex = 80, name = "Maui Blue Poly",          hex = "4271e1" },
    { modIndex = 81, name = "Bright Blue",             hex = "3b39e0" },
    { modIndex = 108, name = "Brown",                  hex = "3a2a1b" },
    { modIndex = 109, name = "Medium Brown",           hex = "785f33" },
    { modIndex = 110, name = "Light Brown",            hex = "b5a079" },
    { modIndex = 122, name = "Off White",              hex = "dfddd0" },
  },      
  Worn = {      
    { modIndex = 21, name = "Black",                   hex = "1e232f" },
    { modIndex = 22, name = "Graphite",                hex = "363a3f" },
    { modIndex = 23, name = "Silver Grey",             hex = "a0a199" },
    { modIndex = 24, name = "Silver",                  hex = "d3d3d3" },
    { modIndex = 25, name = "Blue Silver",             hex = "b7bfca" },
    { modIndex = 26, name = "Shadow Silver",           hex = "778794" },
    { modIndex = 46, name = "Red",                     hex = "a94744" },
    { modIndex = 47, name = "Golden Red",              hex = "b16c51" },
    { modIndex = 48, name = "Dark Red",                hex = "371c25" },
    { modIndex = 58, name = "Dark Green",              hex = "2d423f" },
    { modIndex = 59, name = "Green",                   hex = "45594b" },
    { modIndex = 60, name = "Sea Wash",                hex = "65867f" },
    { modIndex = 85, name = "Dark Blue",               hex = "4c5f81" },
    { modIndex = 86, name = "Blue",                    hex = "58688e" },
    { modIndex = 87, name = "Light Blue",              hex = "74b5d8" },
    { modIndex = 113, name = "Honey Beige",            hex = "b0ab94" },
    { modIndex = 114, name = "Brown",                  hex = "453831" },
    { modIndex = 115, name = "Dark Brown",             hex = "2a282b" },
    { modIndex = 116, name = "Straw Beige",            hex = "726c57" },
    { modIndex = 121, name = "Off White",              hex = "eae6de" },
    { modIndex = 123, name = "Orange",                 hex = "f2ad2e" },
    { modIndex = 124, name = "Light Orange",           hex = "f9a458" },
    { modIndex = 126, name = "Taxi Yellow",            hex = "f1cc40" },
    { modIndex = 130, name = "Orange",                 hex = "f8b658" },
    { modIndex = 132, name = "White",                  hex = "fffffb" },
    { modIndex = 133, name = "Olive Army Green",       hex = "81844c" },
  },
  Misc = {
    { modIndex = 117, name = "Brushed Steel",          hex = "6a747c" },
    { modIndex = 118, name = "Brushed Black Steel",    hex = "354158" },
    { modIndex = 119, name = "Brushed Aluminium",      hex = "9ba0a8" },
    { modIndex = 120, name = "Chrome",                 hex = "5870a1" },
    { modIndex = 127, name = "Police Car Blue",        hex = "4cc3da" },
    { modIndex = 134, name = "Pure White",             hex = "ffffff" },
    { modIndex = 135, name = "Hot Pink",               hex = "f21f99" },
    { modIndex = 136, name = "Salmon Pink",            hex = "fdd6cd" },
    { modIndex = 138, name = "Orange",                 hex = "f6ae20" },
    { modIndex = 139, name = "Green",                  hex = "b0ee6e" },
    { modIndex = 140, name = "Blue",                   hex = "08e9fa" },
    { modIndex = 144, name = "Hunter Green",           hex = "9f9e8a" },
    { modIndex = 147, name = "Mod Shop Black",         hex = "11141a" },
    { modIndex = 156, name = "Alloy",                  hex = "81827f" },
    { modIndex = 157, name = "Epsilon Blue",           hex = "afd6e4" },
    { modIndex = 158, name = "Pure Gold",              hex = "7a6440" },
    { modIndex = 159, name = "Brushed Gold",           hex = "7f6a48" }
  },
  Chameleon = {
    { modIndex = 161, name = "Anodized Red",           hex = "CF1020" },
    { modIndex = 162, name = "Anodized Wine",          hex = "5E1224" },
    { modIndex = 163, name = "Anodized Purple",        hex = "800080" },
    { modIndex = 164, name = "Anodized Blue",          hex = "0000FF" },
    { modIndex = 165, name = "Anodized Green",         hex = "008000" },
    { modIndex = 166, name = "Anodized Lime",          hex = "AFFF00" },
    { modIndex = 167, name = "Anodized Copper",        hex = "B87333" },
    { modIndex = 168, name = "Anodized Bronze",        hex = "CD7F32" },
    { modIndex = 169, name = "Anodized Champagne",     hex = "F7E7CE" },
    { modIndex = 170, name = "Anodized Gold",          hex = "FFD700" },
    { modIndex = 171, name = "Green Blue Flip",        hex = "1164B4" },
    { modIndex = 172, name = "Green Red Flip",         hex = "B43104" },
    { modIndex = 173, name = "Green Brown Flip",       hex = "735C12" },
    { modIndex = 174, name = "Green Turquoise Flip",   hex = "43C6DB" },
    { modIndex = 175, name = "Green Purple Flip",      hex = "9D00FF" },
    { modIndex = 176, name = "Teal Purple Flip",       hex = "6A0DAD" },
    { modIndex = 177, name = "Turquoise Red Flip",     hex = "E60026" },
    { modIndex = 178, name = "Turquoise Purple Flip",  hex = "30D5C8" },
    { modIndex = 179, name = "Cyan Purple Flip",       hex = "0FF0FC" },
    { modIndex = 180, name = "Blue Pink Flip",         hex = "4C2882" },
    { modIndex = 181, name = "Blue Green Flip",        hex = "138808" },
    { modIndex = 182, name = "Purple Red Flip",        hex = "9B111E" },
    { modIndex = 183, name = "Purple Green Flip",      hex = "6B2E53" },
    { modIndex = 184, name = "Magenta Green Flip",     hex = "CA1F7B" },
    { modIndex = 185, name = "Magenta Yellow Flip",    hex = "FEDF00" },
    { modIndex = 186, name = "Burgundy Green Flip",    hex = "900020" },
    { modIndex = 187, name = "Magenta Cyan Flip",      hex = "00FFA1" },
    { modIndex = 188, name = "Copper Purple Flip",     hex = "B87333" },
    { modIndex = 189, name = "Magenta Orange Flip",    hex = "FF5F1F" },
    { modIndex = 190, name = "Red Orange Flip",        hex = "FF4500" },
    { modIndex = 191, name = "Orange Purple Flip",     hex = "B04080" },
    { modIndex = 192, name = "Orange Blue Flip",       hex = "0047AB" },
    { modIndex = 193, name = "White Purple Flip",      hex = "F8F0E3" },
    { modIndex = 194, name = "Red Rainbow Flip",       hex = "ED2939" },
    { modIndex = 195, name = "Blue Rainbow Flip",      hex = "4B0082" },
    { modIndex = 196, name = "Dark Green Pearl",       hex = "013220" },
    { modIndex = 197, name = "Dark Teal Pearl",        hex = "008080" },
    { modIndex = 198, name = "Dark Blue Pearl",        hex = "000080" },
    { modIndex = 199, name = "Dark Purple Pearl",      hex = "301934" },
    { modIndex = 200, name = "Oil Slick Pearl",        hex = "4B0082" },
    { modIndex = 201, name = "Light Green Pearl",      hex = "99E550" },
    { modIndex = 202, name = "Light Blue Pearl",       hex = "ADD8E6" },
    { modIndex = 203, name = "Light Pink Pearl",       hex = "FFB6C1" },
    { modIndex = 204, name = "Off White Pearl",        hex = "F2F0E6" },
    { modIndex = 205, name = "Pink Pearl",             hex = "EAADEA" },
    { modIndex = 206, name = "Yellow Pearl",           hex = "FFF000" },
    { modIndex = 207, name = "Green Pearl",            hex = "00A550" },
    { modIndex = 208, name = "Blue Pearl",             hex = "0000FF" },
    { modIndex = 209, name = "Cream Pearl",            hex = "FFFDD0" },
    { modIndex = 210, name = "White Prismatic",        hex = "FFFFFF" },
    { modIndex = 211, name = "Graphite Prismatic",     hex = "251607" },
    { modIndex = 212, name = "Dark Blue Prismatic",    hex = "00008B" },
    { modIndex = 213, name = "Dark Purple Prismatic",  hex = "301934" },
    { modIndex = 214, name = "Hot Pink Prismatic",     hex = "FF69B4" },
    { modIndex = 215, name = "Dark Red Prismatic",     hex = "8B0000" },
    { modIndex = 216, name = "Dark Green Prismatic",   hex = "013220" },
    { modIndex = 217, name = "Black Prismatic",        hex = "000000" },
    { modIndex = 218, name = "Black Oil Spill",        hex = "121212" },
    { modIndex = 219, name = "Black Rainbow",          hex = "000000" },
    { modIndex = 220, name = "Prismatic",              hex = "CCCCCC" },
    { modIndex = 221, name = "Black Holographic",      hex = "101010" },
    { modIndex = 222, name = "White Holographic",      hex = "E6E8FA" },
    { modIndex = 223, name = "Monochrome",             hex = "B4B4B4" },
    { modIndex = 224, name = "Night & Day",            hex = "333366" },
    { modIndex = 225, name = "The Verlierer",          hex = "550055" },
    { modIndex = 226, name = "Sprunk Extreme",         hex = "00FF00" },
    { modIndex = 227, name = "Vice City",              hex = "FF00FF" },
    { modIndex = 228, name = "Synthwave Nights",       hex = "FF007F" },
    { modIndex = 229, name = "Four Seasons",           hex = "73C2FB" },
    { modIndex = 230, name = "Maisonette 9 Throwback", hex = "DCDCDC" },
    { modIndex = 231, name = "Bubblegum",              hex = "FFC0CB" },
    { modIndex = 232, name = "Full Rainbow",           hex = "FF0000" },
    { modIndex = 233, name = "Sunset",                 hex = "FFD700" },
    { modIndex = 234, name = "The Seven",              hex = "701C1C" },
    { modIndex = 235, name = "Kamen Rider",            hex = "1C1C70" },
    { modIndex = 236, name = "Chromatic Aberration",   hex = "D8BFD8" },
    { modIndex = 237, name = "It's Christmas",         hex = "FF0000" },
    { modIndex = 238, name = "Temperature",            hex = "FFA07A" },
    { modIndex = 239, name = "Yellow Orange Pearl",    hex = "FFAE42" },
    { modIndex = 240, name = "Pink Blue Pearl",        hex = "D8BFD8" },
    { modIndex = 241, name = "Green Blue Pearl",       hex = "3CB371" },
    { modIndex = 242, name = "Turquoise Black Pearl",  hex = "00CED1" }
  }
}

Config.Mods.XenonColours = {
  { modIndex = 0,  name = "White",          hex = "DEDEFF" },
  { modIndex = 1,  name = "Blue",           hex = "0215FF" },
  { modIndex = 2,  name = "Electric Blue",  hex = "0353FF" },
  { modIndex = 3,  name = "Mint Green",     hex = "00FF8C" },
  { modIndex = 4,  name = "Lime Green",     hex = "5EFF01" },
  { modIndex = 5,  name = "Yellow",         hex = "FFFF00" },
  { modIndex = 6,  name = "Golden Shower",  hex = "FF9600" },
  { modIndex = 7,  name = "Orange",         hex = "FF3E00" },
  { modIndex = 8,  name = "Red",            hex = "FF0101" },
  { modIndex = 9,  name = "Pony Pink",      hex = "FF3264" },
  { modIndex = 10, name = "Hot Pink",       hex = "FF05BE" },
  { modIndex = 11, name = "Purple",         hex = "2301FF" },
  { modIndex = 12, name = "Blacklight",     hex = "0F03FF" }
}