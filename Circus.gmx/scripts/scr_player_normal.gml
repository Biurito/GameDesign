

//movement
hsp += (key_right - key_left) * m_speed;
if (keyboard_check_pressed(ord("A")))
{
    global.dir = -1;
}
if (keyboard_check_pressed(ord("D")))
{
    global.dir = 1;
}

 if global.dir=1
  {
  image_xscale=1
  }
 else if global.dir=-1
  {
   image_xscale=-1
  } 

