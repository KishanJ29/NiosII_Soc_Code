/* 
 * SDRAM Interface with NIOS
 *
 */

#include <stdio.h>
#include "system.h"
#include <stdlib.h>
#include "altera_avalon_pio_regs.h"

int main()
{
    printf("Hello from Nios II on (SDRAM)\n");
    void *lots_of_memory = malloc(1024*1024*30); // allocate 5MB of memory
     printf("malloc returned 0x%08lx\n", (alt_u32)lots_of_memory);
        printf("Memory address pointing at %d", lots_of_memory);

  return 0;
}
