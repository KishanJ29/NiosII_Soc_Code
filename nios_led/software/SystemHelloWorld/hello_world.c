/*
* Blinking led
 */

#include <stdio.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"

int main()
{
  printf("Hello from Nios II!\n");

   int count = 0;
   int delay;
   while(1)
   {
    IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE, count & 0x05);
    delay = 0;
      while(delay < 1000000)
        {
        delay++;
        }
    count++;
   }
  return 0;
}
