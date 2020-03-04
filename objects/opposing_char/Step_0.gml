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
	
