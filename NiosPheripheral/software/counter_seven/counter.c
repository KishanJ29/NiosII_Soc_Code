#include "system.h"
# include "sys/alt_irq.h"
# include "altera_avalon_pio_regs.h"
# include "altera_avalon_timer_regs.h"
void sevenseg (void* context, alt_u32 id);
void sevenseg (void* context, alt_u32 id)
{
    static value = 0x00;

    value = value + 1;
    printf("%d ",value);
    IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE, ~value);                          // Display the value with leds
    IOWR_ALTERA_AVALON_TIMER_STATUS(TIMER_BASE, 0);                             // Clear the interrupt flag

    static alt_u8 segments[10] = {
    		0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x98 /* 0-9 */};

            	IOWR_ALTERA_AVALON_PIO_DATA(SEVEN_SEG0_BASE, segments[value%10]);
            	IOWR_ALTERA_AVALON_PIO_DATA(SEVEN_SEG1_BASE, segments[value/10]);
        	    IOWR_ALTERA_AVALON_PIO_DATA(SEVEN_SEG2_BASE, segments[value/100]);
        	    IOWR_ALTERA_AVALON_PIO_DATA(SEVEN_SEG3_BASE, segments[value/1000]);

}
int main (void)
{
	 int state = IORD_ALTERA_AVALON_PIO_DATA(SW_BASE);
	 alt_irq_register(TIMER_IRQ, 0, sevenseg); // Register the ISR for timer
    while(1);

}
