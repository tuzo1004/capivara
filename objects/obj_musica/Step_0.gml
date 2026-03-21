if !audio_is_playing(som)
{
	if timer <= 0 timer = 300
	timer--
	if timer <= 0
	{
		volume = 0
		musica = choose(snd_musica1,snd_musica2,snd_musica3,snd_musica4,snd_musica5)
		som = audio_play_sound(musica,1,false,0)
	}
}
else
{
	volume = lerp(volume,.8,.0005)
	audio_sound_gain(som,volume)
}
show_debug_message(volume)
show_debug_message(musica)