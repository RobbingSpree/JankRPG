/// @description Insert description here
// You can write your code in this editor

atb+=spd;
percent= atb*3.6;
if atb > 100
	spd=high_spd;
if atb < 100 && atb > 0
	spd=nor_spd;
if atb<0
	spd=neg_spd;
	
if atb > 200
	atb=200;

