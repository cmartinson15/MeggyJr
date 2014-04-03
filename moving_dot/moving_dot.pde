#include <MeggyJrSimple.h>
void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
}
int(xcoord)=3;
int(ycoord)=4;
void loop()
{
DrawPx(xcoord,ycoord,3);
for (int z=0; z<8; z++)
  {
    DrawPx(z,7,Green);
    DrawPx(z,0,Green);
    DrawPx(0,z,Green);
    DrawPx(7,z,Green);
  }
CheckButtonsPress();
  if(Button_Up)
    ycoord++;
  if(Button_Down)
    ycoord--;
  if(ycoord>6)
    ycoord=6;
  if(ycoord<1)
    ycoord=1;
  if(Button_Left)
    xcoord--;
  if(Button_Right)
    xcoord++;
  if(xcoord>6)
    xcoord=6;
  if(xcoord<1)
    xcoord=1;
  DisplaySlate();
  delay(250);
  ClearSlate();
}
