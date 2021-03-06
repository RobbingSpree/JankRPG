/// @description Insert description here
// You can write your code in this editor

draw_self();

if mouse_over
{
	draw_circle(x,y+sprite_height/2,sprite_height,true);
	draw_line(x,y,x,y+sprite_height);
	draw_line(x-sprite_width/2,y+sprite_height/2,x+sprite_width/2,y+sprite_height/2)
}

#region //--Charge Bar
//draw charge bar
var i, steps, xx, yy, radius;
steps=20;
xx=x;
yy=y+70+sprite_height;
radius=30;
draw_primitive_begin(pr_trianglefan);
draw_set_color(c_green);
draw_vertex(xx, yy);
for(i = 0; i <= steps; i += 1)
	{
		draw_vertex(xx + lengthdir_x(radius, percent * i / steps), yy + lengthdir_y(radius, percent * i / steps));
	}
draw_primitive_end();
//draw second layer of atb bar
if atb > 100
{
	draw_primitive_begin(pr_trianglefan);
	draw_set_color(c_blue);
	draw_vertex(xx, yy);
	for(i = 0; i <= steps; i += 1)
		{
			draw_vertex(xx + lengthdir_x(radius, (percent-360) * i / steps), yy + lengthdir_y(radius, (percent-360) * i / steps));
		}
	draw_primitive_end();
}
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(UI_font);
draw_text(xx,yy,string(floor(atb))+"%");
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
#endregion