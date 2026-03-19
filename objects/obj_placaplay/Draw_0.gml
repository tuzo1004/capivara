draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(Font1)
draw_set_colour(cor)

switch(texto)
{
	case "maior\npontuacao":
	draw_text(x,y,texto +"\n" + string(recorde))
	break
	
	default:
	draw_set_colour(c_black)
	draw_text(x+1,y+1,texto)
	draw_set_colour(cor)
	draw_text(x,y,texto)
	
	break
}
