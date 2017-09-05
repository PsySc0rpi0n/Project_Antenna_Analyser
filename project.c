#include <avr/io.h>
#include <inttypes.h>
#include <stdlib.h>

#include "signal_gen.h"
#include "adc.h"
#include "lcd.h"

#define BUFFER 5

int main(void){
   float vswr_val = 0.0;
   char tmp[BUFFER];

   lcd_init(LCD_DISP_ON);
   lcd_clrscr();
   adc_setup();
   ad9850_setup();

   freq_send(10e5);

   for( ; ;){
      lcd_gotoxy(5,0);
      lcd_puts("VSWR annalyser");
      lcd_gotoxy(0,1);
      lcd_puts("VSWR Value:");
      dtostrf(adc_read(&vswr_val), 5, 2, tmp);
      lcd_puts("VSWR annalyser");
      lcd_puts(tmp);
   }
   return 0;
}
