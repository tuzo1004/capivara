var dir = keyboard_check(ord("D")) || keyboard_check(vk_right) || (mouse_check_button(mb_left) && mouse_x > room_width/2)
var esq = keyboard_check(ord("A")) || keyboard_check(vk_left)  || (mouse_check_button(mb_left) && mouse_x < room_width/2)

var movh = (dir-esq)*velh
if movh != 0 image_xscale = -sign(movh)
x+=movh

if movv <0
{
	movv+=grav
	image_yscale = lerp(image_yscale,1,.05)
}
else 
{
	movv += 2*grav
	image_yscale = lerp(image_yscale,1.5,.05)
}

if place_meeting(x,y+movv,obj_plataforma) && movv > 0
{
	while !place_meeting(x,y+1,obj_plataforma)
	{
		 y+=1
	}
	var plat = instance_place(x,y+1,obj_plataforma)
	audio_pause_sound(snd_pulo)
	audio_play_sound(snd_pulo,1,false,.85,0,random_range(.75,1))
	image_yscale = .5
	plat.colidiu = true
	movv = -velv
	instance_create_layer(x,y,"Instances",obj_efeito)
}


scr_movimentacaodaroom()
layer_vspeed("Background",-global.movy*.4)
y+=movv-global.movy
show_debug_message(WAVE)
if bbox_bottom > room_height
{
	scr_mudar_de_sala(rm_menu)
}