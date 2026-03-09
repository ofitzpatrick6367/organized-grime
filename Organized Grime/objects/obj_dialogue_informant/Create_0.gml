// Inherit the parent event
event_inherited();

fridge_dialogue = false;

if (obj_glove.house_1_fridge_clean and fridge_dialogue == false) {
    dialog.add(spr_informant_dialogue, "Hm. \'Code: 9541.\' Might be important.")
}

if (room == rm_floor2) {
    dialog.pop();
    dialog.add(spr_informant_dialogue, "Hey, looks like they keep a safe up here. Go ahead and check it out. It looks like it has a numerical code... maybe you've seen one of those around?")
    dialog.add(spr_informant_dialogue, "And when you DO get it open, don't take anything right away. You'd look too suspicious coming out of the office with full pockets.")
    dialog.add(spr_informant_dialogue, "Just take the spare key in there and get out of the house for now.") 
}

if (room == rm_floor2 and obj_glove.safe_open == true) {
    dialog.pop();
    dialog.pop();
    dialog.pop();
    dialog.pop();
    dialog.add(spr_informant_dialogue, "Nice, you got the key! Now get out before they start to think you've been in here too long and decide to check on you.")
}