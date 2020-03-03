/// @description Setup

spd = 1; //how quick the action gauge fills 
atb = 0; //action gauge fills as a percentile meter can overfill
neg_spd=0.1;
nor_spd=0.5;
high_spd=0.33;

percent= atb*3.6;

image_speed=0;

skills = [];
show_menu=false;

enum s
{
	test,
	testatk,
	testheal
}

skills[0,0] = s.test;
skills[1,0] = "Test";
skills[0,1] = s.testatk;
skills[1,1] = "Test Attack";
skills[0,2] = s.testheal;
skills[1,2] = "Test Heal";