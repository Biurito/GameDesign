if (place_meeting(x + hsp, y, obj_wall))
{
    while (!place_meeting(x + sign(hsp), y, obj_wall))
    {
        x+= sign(hsp);
    }
    hsp = 0;
}
else
{
    x+= hsp;
    hsp*=drag;
}
if (place_meeting(x, y+1, obj_wall))
{
    grd = 1;
    vsp -= keyboard_check_pressed(ord("W"))*jump;
}
vsp += grav+ grav_bonus;
if (place_meeting(x, y+ vsp, obj_wall))
{
    while (!place_meeting(x, y + sign(vsp), obj_wall))
    {
        grd = 1;
        y+= sign(vsp);
    }
    vsp = 0;
}
else
{
    grd = 0;
    y+= vsp;
}

