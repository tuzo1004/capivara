draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,escala,image_angle,image_blend,image_alpha)
var alturadosprite = sprite_get_height(sprite)
if estado = "obtida"
{
	cor = c_white
}
else cor = c_black
draw_sprite_ext(sprite,1,x,y+alturadosprite/2,escala,escala,image_angle,cor,image_alpha)

if funcao == "comprar" && estado != "obtida"
{
	var altura = y+18
	draw_set_colour(c_yellow)
	draw_text_transformed(x-7,altura,preco,image_xscale,escala,image_angle)
	draw_sprite_ext(spr_acai,2,x+7,altura,image_xscale,escala,image_angle,c_white,1)
}