move_speed = 1;
can_move = true;
house_1_clean = false;
house_1_kitchen_clean = 0;
house_1_fridge_clean = 0;
times_up_stairs = 0;
night_time = false;
interact = [obj_fridge, obj_mess, obj_dog_bed, husband_npc, wife_npc];
switch_anim = 0;

first_dialog = false;
fridge_dialog = false;
dogbed_dialog = false;
second_dialog = false;
safe_dialog = false;
kitchen_clean_dialog = false;
open_safe_dialog = false;
end_cutscene = false;
yard_dialog = false;

tilemap = layer_tilemap_get_id("Tiles_Col"); 
mess = obj_mess;
npc = obj_npc_parent;
safe = obj_safe;
fridge = obj_fridge;
stair = obj_stair_side;
dogbed = obj_dog_bed;
level_one_npc = husband_npc;
level_one_npc_2 = wife_npc;
desk = obj_desk_with_check;
swivel_chair = obj_swivel_chair;
bush = obj_bush;
fence = obj_fence;
kitchen = obj_minigame_win;

// sprites

idle_down = spr_player_idle_down;
idle_left = spr_player_idle_left;
idle_right = spr_player_idle_right;
idle_up = spr_player_idle_up;
walk_down = spr_player_walk_down;
walk_left = spr_player_walk_left;
walk_right = spr_player_walk_right;
walk_up = spr_player_walk_up;

night_idle_down = spr_robber_idle_down;
night_idle_left = spr_robber_idle_left;
night_idle_right = spr_robber_idle_right;
night_idle_up = spr_robber_idle_up;
night_walk_down = spr_robber_walk_down;
night_walk_left = spr_robber_walk_left;
night_walk_right = spr_robber_walk_right;
night_walk_up = spr_robber_walk_up;




player = self;