global.tables = InitiateTables();
global.tablesOccupied = 0;
global.tablesOccupiedMax = 10;

global.toiletMen = [832, 96];
global.toiletMenCounter = 0;
global.toiletMenMaxCounter = 1;

global.toiletWomen  = [896, 608];
global.toiletWomenCounter = 0;
global.toiletWomenMaxCounter = 1;

global.mirrorMen = [912, 190];
global.mirrorMenCounter = 0;
global.mirrorMenMaxCounter = 1

global.mirrorWomen = [812, 486];
global.mirrorWomenCounter = 0;
global.mirrorWomenMaxCounter = 1

global.plants = [
    [888, 306],
    [888, 338], 
    [888, 370]
]
global.plantsCounter = 0;
global.plantsMaxCounter = 3;

global.counter = [
    [96, 192],
    [222, 192],
    [322, 192],
    [416, 192]
];
global.counterCounter = 0;
global.counterMaxCounter = 4;

global.tv = [640, 72];
global.tvCounter = 0;
global.tvMaxCounter = 0;

global.npc = [];
global.npcMaxCounter = 40;
global.npcMinNPCCreate = 1;
global.npcMaxNPCCreate = 4;
global.npcLayer = layer_get_id("NPC");
global.npcCreationPoints = [
    [288, 610], // Left sliding door
    [544, 610]  // Right sliding door
];

global.possibleActions = [
    "Sit",
    "Food",
    "Drink",
    "Plants",
    "Toilet",
    "Counter",
    "TV",
    "Mirror",
    "Leave",
    "Nothing"
];

global.creatingNPC = false;
global.createNPCCooldown = false;

