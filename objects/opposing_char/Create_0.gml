/// @description setup

spd = 1; //how quick the action gauge fills 
atb = 0; //action gauge fills as a percentile meter can overfill
neg_spd=0.1; //speed when character is in negitive atb
nor_spd=0.5; //speed from 0 to 100 atb
high_spd=0.33; //speed above 100 atb

percent= atb*3.6; //visual indicator of atb translated into degrees

image_speed=0;
image_index=irandom(image_number);

mouse_over=false;

//skill setup
skills = [];
skills_total=3;
skills[0,0] = s.test;
skills[1,0] = "Test";
skills[2,0] = 20;
skills[0,1] = s.testatk;
skills[1,1] = "Test Attack";
skills[2,1] = 50;
skills[0,2] = s.testheal;
skills[1,2] = "Test Heal";
skills[2,2] = 100;

