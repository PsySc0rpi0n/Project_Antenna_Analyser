#include <avr/io.h>
#include <inttypes.h>

#include "signal_gen.h"
#include "adc.h"
#include "lcd.h"

int main(void){
   float vswr_val = 0.0;

   lcd_init(LCD_DISP_ON);
   lcd_clrscr();
   adc_setup();
   ad9850_setup();

   freq_send(10e5);

   for( ; ;){
      lcd_gotoxy(5,0);
      lcd_puts("VSWR annalyser");
   }
   return 0;
}
