#include <avr/io.h>
#include <inttypes.h>
#include <stdlib.h>
#include <util/delay.h>
#include <string.h>

#include "signal_gen.h"
#include "adc.h"
#include "lcd.h"

#define BUFFER 64

int main(void){
   float vswr_val = 0.0;
   char tmp[BUFFER];
   char msg_vswr_value[] PROGMEM = "VSWR Value:";
   char msg_vswr_analyser[] PROGMEM = "VSWR annalyser";
   PGM_P messages[] PROGMEM = {
                                 msg_vswr_value,
                                 msg_vswr_analyser
                              };

   lcd_init(LCD_DISP_ON);
   lcd_clrscr();
   adc_setup();
   ad9850_setup();

   freq_send(10e5);

   lcd_gotoxy(3,0);
   lcd_puts((PGM_P) pgm_read_word(&(messages[1])));
   _delay_ms(1000);
   lcd_gotoxy(0,1);
   lcd_puts((PGM_P) pgm_read_word(&(messages[0])));
   for( ; ;){
      adc_read(&vswr_val);
      dtostrf(vswr_val, 7, 4, tmp);
      lcd_puts(tmp);
      _delay_ms(1000);
      lcd_gotoxy(strlen((PGM_P) pgm_read_word(&(messages[0]))), 1);
   }
   return 0;
}
