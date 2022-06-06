function CreateNPC() {    
    if (!global.creatingNPC) {    
        if (array_length(global.npc) < global.npcMaxCounter and global.tablesOccupied < global.tablesOccupiedMax) {
            var chance = irandom_range(0, 1000);
            if (chance > 990) {
                var howMany = irandom_range(global.npcMinNPCCreate, global.npcMaxNPCCreate);
            
                if (array_length(global.npc) + howMany > global.npcMaxCounter) {
                    howMany = global.npcMaxCounter - array_length(global.npc);
                }
            
                var tableIndex = 0;
            
                for (var i = 0; i < array_length(global.tables); i++) {
                    if (!global.tables[i].occupied) {
                        tableIndex = global.tables[i];
                        global.tables[i].occupied = true;
                        global.tablesOccupied++;
                        break;
                    }
                }
                
                if (tableIndex != 0) {
                    global.creatingNPC = true;
                    global.createNPCCooldown = true;
            
                    for (var i = 0; i < howMany; i++) {
                        var door = irandom_range(0, 1);
                        var newNPC = instance_create_layer(
                            global.npcCreationPoints[door][0],
                            global.npcCreationPoints[door][1],
                            global.npcLayer,
                            GenericNPC
                        );
                
                        var whichSprite = irandom_range(0, 2);
                
                        newNPC.sprite = newNPC.possibleSprites[whichSprite];
                        
                        if (newNPC.sprite == "Adam") {
                            newNPC.isMen = true;
                        }
                        
                        newNPC.table = tableIndex;
                        
                        if (!tableIndex.chairBottomLeftOccupied) {
                            newNPC.table.chairBottomLeftOccupied = true;
                            newNPC.currentChair = tableIndex.chairBottomLeft;
                            newNPC.currentChairIdentifier = "BottomLeft";
                        } else if (!tableIndex.chairBottomRightOccupied) {
                            tableIndex.chairBottomRightOccupied = true;
                            newNPC.currentChair = tableIndex.chairBottomRight;
                            newNPC.currentChairIdentifier = "BottomRight";
                        } else if (!tableIndex.chairTopLeftOccupied) {
                            tableIndex.chairTopLeftOccupied = true;
                            newNPC.currentChair = tableIndex.chairTopLeft;
                            newNPC.currentChairIdentifier = "TopLeft";
                        } else if (!tableIndex.chairTopRightOccupied) {
                            tableIndex.chairTopRightOccupied = true;
                            newNPC.currentChair = tableIndex.chairTopRight;
                            newNPC.currentChairIdentifier = "TopRight";
                        }
                        
                        newNPC.currentAction = "Sit";
                        newNPC.executingAction = true;
                
                        array_push(global.npc, newNPC);
                    }
                    
                    global.creatingNPC = false;
                }
            }
        }
    }
}