draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,escala,image_angle,image_blend,image_alpha)
var alturadosprite = sprite_get_height(sprite)
draw_sprite_ext(sprite,1,x,y+alturadosprite/2,escala,escala,image_angle,cor,image_alpha)

if funcao == "comprar"
{
	draw_set_halign(fa_left)
	draw_set_colour(c_purple)
	var larg = 5
	var acais = string(global.acais)
	draw_text(larg,10,acais)
	draw_sprite(spr_acai,2,larg+10+string_length(acais)*6,10)
	draw_set_halign(fa_middle)
	
	if estado != "obtida"
	{
		var altura = y+18
		draw_set_colour(c_yellow)
		draw_text_transformed(x-7,altura,preco,image_xscale,escala,image_angle)
		draw_sprite_ext(spr_acai,2,x+7,altura,image_xscale,escala,image_angle,c_white,1)
	}
}