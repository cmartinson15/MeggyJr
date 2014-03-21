#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
}

void loop()                     // run over and over again
{
  EditColor(CustomColor0, 1, 8, 0);
  for (int i=2; i<8; i++){
  for (int z=2; z<8; z++)
    {
      DrawPx(0,3,16);
      DrawPx(0,2,5);
      DrawPx(0,1,5); 
      DrawPx(0,0,5);
      DrawPx(1,2,5);
      {DrawPx(z,3,15);
       DrawPx(z,2,15);
       DrawPx(z,1,15);     
       DisplaySlate();
       delay(250);
       ClearSlate();
     }
    }
  }
}
