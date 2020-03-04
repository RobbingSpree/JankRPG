/// @description draw character, charge gauge and menu
draw_self();
//draw_text(x,y+20+sprite_height,menu_timeout/timeout_max);

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

#region //--Action Menu
if show_menu
{
	// draw menu box
	draw_set_color(c_maroon);
	draw_rectangle(mxl-buffer,myt-buffer,mxr+buffer,myb+buffer,false);
	
	//draw menu highlight
	draw_set_color(c_white);
	draw_rectangle_width(mxl-buffer/2,myt-buffer/2,mxr+buffer/2,myb+buffer/2,buffer/2);
	
	//draw action contents
	draw_set_font(menu_font);
	for (var i=0; i<skills_total; i++)
	{
		draw_text(mxl,myt+i*row_hei,skills[1,i]);
	}
	draw_set_font(-1);
	
	//draw menu focus
	if (mouse_y-myt < menu_hei && mouse_y-myt > 0 && mouse_x-mxl < menu_wid && mouse_x-mxl > 0) || find_target
		draw_rectangle_width(mxl,myt+mouse_row*row_hei,mxr,myt+(mouse_row+1)*row_hei,2);
	
	//draw time left bar
	var col =make_color_hsv(menu_timeout/timeout_max*100 ,255,255)
	draw_set_color(col);
	draw_line_width(mxl,myb-2,mxl+(menu_wid*menu_timeout/timeout_max),myb-2,4);
	draw_set_color(c_white);
}
#endregion