// Inherit the parent event
event_inherited();

dialog.add(spr_npc1_dialogue, "All that's up there is the office.");
dialog.add(spr_npc1_dialogue, "You don't need to go up there yet.");

if (obj_player.times_up_stairs = 1) {
    dialog.pop();
    dialog.pop();
    dialog.add(spr_npc1_dialogue, "I already told you that you don\'t need to go up there yet.");
}

if (obj_player.times_up_stairs >= 2) {
    dialog.pop();
    dialog.pop();
    dialog.pop();
    dialog.add(spr_npc1_dialogue, "Why do you want to go up there so bad? Stop it.");
}