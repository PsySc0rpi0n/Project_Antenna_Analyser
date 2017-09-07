#include <avr/io.h>
#include <inttypes.h>
#include <stdlib.h>
#include <util/delay.h>

#include "signal_gen.h"
#include "adc.h"
#include "lcd.h"

#define BUFFER 64

int main(void){
   float vswr_val = 0.0;
   char tmp[BUFFER];

   lcd_init(LCD_DISP_ON);
   lcd_clrscr();
   adc_setup();
   ad9850_setup();

   freq_send(10e5);


   lcd_gotoxy(3,0);
   lcd_puts("VSWR annalyser");
   _delay_ms(1000);
   lcd_gotoxy(0,1);
   lcd_puts("VSWR Value:");
   for( ; ;){
      adc_read(&vswr_val);
      dtostrf(vswr_val, 5, 2, tmp);
      lcd_puts(tmp);
      _delay_ms(1000);
      lcd_clrscr();
   }
   return 0;
}
