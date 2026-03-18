randomise()
tipodeplataforma = choose(spr_plataformamadeira,spr_plataformapassarinho,spr_plataformafolha)
velocidadedosprite = 10/game_get_speed(gamespeed_fps)
spriteatual = 0
sprite_index = -1
image_xscale = choose(-1,1)
vel = choose(-1,1)
colidiu = false
altura = y
