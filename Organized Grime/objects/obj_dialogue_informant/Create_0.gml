// Inherit the parent event
event_inherited();

open_part1 = false;

fridge_dialogue = false;

if (room == level_one_yard and obj_player.house_1_clean == false and obj_glove.got_key == false) {
    dialog.add(spr_informant_dialogue, "Mornin' pal, glad you could come into ''work'' today. Listen, I got a new joint for you to scope out, should be pretty easy for someone of your expertise. Here's the rundown.")
    
        dialog.add(spr_informant_dialogue, "Simple enough, right? Now go ahead and get to work. Lemme know if you find anything. And I'll be keeping an eye out too, got it?")
    }
    

if (obj_glove.house_1_fridge_clean and fridge_dialogue == false) {
    dialog.pop();
    dialog.pop();
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

if (room == level_one_yard and obj_player.house_1_clean == true and obj_glove.got_key = true) {
    dialog.pop();
    dialog.pop();
    dialog.add(spr_informant_dialogue, "Hop in the car and get out of here. We'll come back later tonight for the goods.")
}

if (room == level_one_yard and obj_player.house_1_clean == true and obj_glove.got_key = true and obj_player.night_time == true) {
    dialog.pop();
    dialog.pop();
    dialog.add(spr_informant_dialogue, "Evening, let’s get this done fast, I got stuff to do later.")
	dialog.add(spr_informant_dialogue, "Go ahead and use the key you got on the front of the house.")
}

if (room == rm_floor2_night){
	dialog.pop();
	dialog.pop();
	dialog.add(spr_informant_dialogue, " Great, now my sources tell me that these two are some deep sleepers, so you don’t gotta worry too much about waking them up.")
	dialog.add(spr_informant_dialogue, "I still wouldn’t get too comfortable though, so just go ahead and get to the safe.")
}