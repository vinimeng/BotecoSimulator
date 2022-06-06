var indexToDelete = 0;

for (var i = 0; i < array_length(global.npc); i++) {
    if (global.npc[i] == object_index) {
        indexToDelete = i;
        break;
    }
}

array_delete(global.npc, indexToDelete, 1);

