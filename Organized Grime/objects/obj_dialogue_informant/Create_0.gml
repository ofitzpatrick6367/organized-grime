// Inherit the parent event
event_inherited();

fridge_dialogue = false;

if (obj_glove.house_1_fridge_clean and fridge_dialogue == false) {
    dialog.add(spr_informant_dialogue, "Hm. \'Code: 9541.\' Might be important. Go ahead and take that note.")
}

if (room == rm_floor2) {
    dialog.pop();
    dialog.add(spr_informant_dialogue, "Hey, looks like they keep a safe up here. Go ahead and check it out. It looks like it has a numerical code... maybe you've seen one of those around?")
    dialog.add(spr_informant_dialogue, "And when you DO get it open, don't take anything right away. You'd look too suspicious coming out of the office with full pockets.")
    dialog.add(spr_informant_dialogue, "Just take the spare key in there and the check and get out of the house for now.") 
}

if (room == rm_floor2 and obj_glove.safe_open == true and obj_glove.got_key == false) {
    dialog.pop();
    dialog.pop();
    dialog.pop();
    dialog.add(spr_informant_dialogue, "...You forgot to take the key.")    
}

if (room == rm_floor2 and obj_glove.safe_open == true and obj_glove.got_key == true) {
    dialog.pop();
    dialog.pop();
    dialog.pop();
    dialog.pop();
    dialog.add(spr_informant_dialogue, "Nice, you got the key! Now get out before they start to think you've been in here too long and decide to check on you.")
}

if (room == level_one_yard and obj_player.house_1_clean == true) {
    dialog.pop();
    dialog.pop();
    dialog.add(spr_informant_dialogue, "Hop in the car and get out of here. We'll come back later tonight for the goods.")
}

if (room == level_one_yard and obj_player.house_1_clean == true and obj_player.night_time == true) {
    dialog.pop();
    dialog.pop();
    dialog.add(spr_informant_dialogue, "Evening, let’s get this done fast, I got stuff to do later.")
	dialog.add(spr_informant_dialogue, "Go ahead and use the key you got on the front of the house.")
}