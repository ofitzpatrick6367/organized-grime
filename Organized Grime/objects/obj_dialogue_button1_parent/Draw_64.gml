if (showing_button == true) {
    var drop = 178;
    var text_x = 30;
    var text_y = 18 + drop;
    var height = 64;
    var width = (display_get_gui_width() / 2) - 10;
    var border = 5;
    var padding = 16;
    
    draw_set_alpha(alpha);
    
    draw_set_color(c_black);
    draw_rectangle(0, drop, width, height + drop, false);
    
    draw_set_color(c_white);
    draw_rectangle(border, border + drop, width + border, border + drop, false);
    
    draw_set_color(c_black);
    draw_rectangle((border * 2), ((border * 2) + drop), width + (border * 2), ((border * 2) + drop), false);
    
    
    draw_set_color(c_white);
    draw_text_ext(text_x, text_y, text, 16, 16 - 192);
    
    alpha = lerp(alpha, 1, 0.06);
}
    
draw_set_alpha(1);
    