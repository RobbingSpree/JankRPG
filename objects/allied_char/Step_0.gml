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

//update time scale if menu is on screen
if show_menu
{
	if !find_target
	{
		menu_timeout--;
		if floor((mouse_y-myt)/row_hei)<skills_total
			mouse_row = floor((mouse_y-myt)/row_hei);
	}
	global.timescale =0.2;
	
	if mouse_check_button_pressed(mb_left)
	{
		find_target= true;
		act_button.acting = self;
	}
}
//close menu if no action for long enough
if menu_timeout <=0 && show_menu
{
	show_menu=false;
	menu_timeout=0;
	global.timescale=1;
}

