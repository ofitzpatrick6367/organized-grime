event_inherited();

sell_ring = false;

owner = obj_pawn_shop_owner;



if (owner.watch_sold == true && owner.watch_negotiate == false) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "I'm sure I have space for this in here... somewhere... (+ $75)");
    owner.money += 75;
}

else if (owner.ring_sold == true && owner.ring_negotiate == false) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "I'm sure I have space for this in here... somewhere... (+ $150)");
    owner.money += 150;
}

else if (owner.ring_sold == true && owner.ring_raise == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "I'm sure I have space for this in here... somewhere... (+ $175)");
    owner.money += 175;
}

else if (owner.watch_sold == true && owner.watch_raise == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "I'm sure I have space for this in here... somewhere... (+ $300)");
    owner.money += 300;
}

else if (owner.watch_sold == true && owner.watch_drop == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "I'm sure I have space for this in here... somewhere... (+ $70)");
    owner.money += 70;
}

else if (owner.ring_sold == true && owner.ring_drop == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "I'm sure I have space for this in here... somewhere... (+ $125)");
    owner.money += 125;
}

else if (owner.watch_raise == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "High quality, eh? Let me take a look... Wait, is that real gold? I'll give you $300.");
}

else if (owner.watch_drop == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "Listen, you're starting to annoy me. $70, take it or leave it.");
}

else if (owner.watch_negotiate == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "What, $75 isn't good enough for you? What do you think it's worth?");
}

else if (owner.sell_watch == true) { 
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "A watch, huh... I'll give you $75 for it."); 
}

else if (owner.ring_raise == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "High quality, eh? Let me take a look... Looks pretty good to me. $175 it is.");
}

else if (owner.ring_drop == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "Well, now I'm only willing to give you $125, take it or leave it.");
}

else if (owner.ring_negotiate == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "What, $150 isn't good enough for you? What do you think it's worth?");
}

else if (owner.sell_ring == true) { 
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "A ring, huh... looks pretty decent. I'll give you $150 for it.");
}

else if (owner.sell == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "Alright, what do you want to sell?");
}

else if (owner.intro_done == false) {
    dialog.add(spr_pawn_shop_dialogue, "...You didn't see that, did you? I mean, uh, what can I help you with?");
}


    