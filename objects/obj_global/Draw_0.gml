
draw_set_alpha(alpha)
var cor_anterior = draw_get_colour()
draw_set_colour(c_black)
draw_rectangle(0,0,room_width,room_height,false)
draw_set_alpha(1)
draw_set_colour(cor_anterior)