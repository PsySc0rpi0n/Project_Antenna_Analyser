#include <avr/io.h>
#include <inttypes.h>
#include <stdlib.h>
#include <util/delay.h>
#include <string.h>

#include "signal_gen.h"
#include "adc.h"
#include "lcd.h"

#define BUFFER 64

#define MSG_VSWR_VALUE "VSWR Value:"

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
   lcd_puts(MSG_VSWR_VALUE);
   for( ; ;){
      adc_read(&vswr_val);
      dtostrf(vswr_val, 7, 4, tmp);
      lcd_puts(tmp);
      _delay_ms(1000);
      lcd_gotoxy(strlen(MSG_VSWR_VALUE), 1);
   }
   return 0;
}
