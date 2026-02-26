// Inherit the parent event
event_inherited();

fridge_dialogue = false;

if (obj_glove.house_1_fridge_clean and fridge_dialogue == false) {
    dialog.add(spr_informant_dialogue, "Hm. \'Code: 9541.\' Might be important.")
}

if (room == rm_floor2) {
    dialog.pop();
    dialog.add(spr_informant_dialogue, "Hey, looks like they keep a safe up here. Go ahead and check it out. It looks like it has a numerical code... maybe you've seen one of those around?")
}

if (room == rm_floor2 and obj_glove.safe_open == true) {
    dialog.pop();
    dialog.add(spr_informant_dialogue, "Nice, you got it open! Don't take anything yet though, you'd look too suspiscious coming out of the office with full pockets.")
    dialog.add(spr_informant_dialogue, "Looks like they keep a spare key in here, so grab that and get out of the house.")
}
