/// @description 

atb+=spd*global.timescale;
percent= atb*3.6;
if atb > 100
	spd=high_spd;
if atb < 100 && atb > 0
	spd=nor_spd;
if atb<0
	spd=neg_spd;
	
if atb > 200
	atb=200;
	
if act_button.acting != noone
{
	//check for mouse overlap
	mouse_over=false;
	if mouse_x > x-sprite_width/2 && mouse_x < x+sprite_width/2 && mouse_y > y && mouse_y < y+sprite_height
	{
		mouse_over=true;
	}
}

if mouse_over && mouse_check_button_pressed(mb_left)
{
	act_button.acting.target=self;
}