function create_dialogue(_messages){
    if (instance_exists(obj_dialogue)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialogue);
    _inst.messages = _messages;
    _inst.current_message = 0;
}

char_colors = {
    "Congrats": c_yellow,
    "npc guy": c_yellow,
    "npc NUMBER 2": c_aqua
}

welcome_dialogue = [
{
    name: "npc guy",
    msg: "welcome"
},
{
    name: "npc NUMBER 2",
    msg: "thanks"
},
{
    name: "npc guy",
    msg: "woag"
},
{
    name: "npc NUMBER 2",
    msg: "yeehaw test"
},
{
    name: "npc guy",
    msg: "yep"
}
]