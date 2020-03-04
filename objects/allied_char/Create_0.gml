/// @description Setup

spd = 1; //how quick the action gauge fills 
atb = 0; //action gauge fills as a percentile meter can overfill
neg_spd=0.1;
nor_spd=0.5;
high_spd=0.33;

percent= atb*3.6;

image_speed=0;

skills = [];
skills_total=3;
show_menu=false;
menu_timeout=0;
timeout_max=240;
mouse_row=0;
find_target=false; //flag to allow player to select a target for a skill
global.timescale=1;

//menu layout variables

draw_set_font(menu_font);
str = "Test";
row_hei= string_height(str);
draw_set_font(-1);
	
menu_wid=256;
menu_hei=6*row_hei;
mxl= x-menu_wid/2;
mxr= x+menu_wid/2;
myt= y-menu_hei-20;
myb= y-20;
buffer = 10;

enum s
{
	test,
	testatk,
	testheal
}

skills[0,0] = s.test;
skills[1,0] = "Test";
skills[2,0] = 20;
skills[0,1] = s.testatk;
skills[1,1] = "Test Attack";
skills[2,1] = 50;
skills[0,2] = s.testheal;
skills[1,2] = "Test Heal";
skills[2,2] = 100;