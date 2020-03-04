var xl = argument0;
var yt = argument1;
var xr = argument2;
var yb = argument3;
var wid = argument4;

for (var i=0; i<wid; i++)
{
	draw_rectangle(xl+i,yt+i,xr-i,yb-i,true);
}
