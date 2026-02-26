// Inherit the parent event
event_inherited();

if (obj_player.house_1_clean == false) {
    dialog.add(spr_npc2_dialogue, "We just need you to clean up a bit in the kitchen. It's over to the right.");
    if (obj_player.house_1_fridge_clean == true or obj_player.house_1_kitchen_clean == true) {
        dialog.pop();
        dialog.pop();
        dialog.add(spr_npc2_dialogue, "There's still something left to do in the kitchen, could you take care of it before you leave?")
    }
}

if (obj_player.house_1_clean == true) {
    dialog.pop();
    dialog.pop();
    dialog.add(spr_npc2_dialogue, "Feel free to grab that check now. It\’s on the desk in the office.")
}