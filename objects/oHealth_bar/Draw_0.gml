/// @description Draw Health Bar Code

/*

//Health bar position
posx=x
posy=y

//max hp bug
if oPlayer.hp > global.max_hp {oPlayer.hp = global.max_hp}

hsv = hsv_min
for (i= 0;i<oPlayer.hp;i++){
    //draw the color effect
    if hsv < hsv_max and hsv_effect { 
        hsv+=hsv_inc;
    }
       
    //create the color
    col=make_colour_hsv(hsv,saturation,200)
    
    //draw the health fill
    draw_sprite_ext(spr_health_bar_fill,0,posx+i,posy,1,1,0,col,1);
}

//draw the health center
for (i= 0;i<global.max_hp;i++){
    draw_sprite(spr_health_bar_center,0,posx+i,posy);
}

//draw the health left bar, adjust if needed
left_posx=0
left_posy=0
draw_sprite(spr_health_bar_left,0,posx+left_posx,posy+left_posy);

//draw the health right bar, adjust if needed
right_posx=0
right_posy=0
draw_sprite(spr_health_bar_right,0,posx+global.max_hp+right_posx,posy+right_posy);




