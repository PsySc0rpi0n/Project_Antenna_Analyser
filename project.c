#include <avr/io.h>
#include <inttypes.h>
#include <stdlib.h>
#include <util/delay.h>
#include <string.h>
#include <avr/pgmspace.h>

#include "signal_gen.h"
#include "adc.h"
#include "lcd.h"

#define BUFFER 64

void read_program_space_string(uint8_t index);

const char msg_vswr_value[] PROGMEM = "VSWR Value:";
const char msg_vswr_analyser[] PROGMEM = "VSWR annalyser";
const PGM_P const messages[] PROGMEM = {
                              msg_vswr_value,
                              msg_vswr_analyser
                           };

int main(void){
   float vswr_val = 0.0;
   char tmp[BUFFER];

   lcd_init(LCD_DISP_ON);
   lcd_clrscr();
   adc_setup();
   ad9850_setup();

   freq_send(10e5);

   lcd_gotoxy(3,0);
   read_program_space_string(1);
   _delay_ms(1000);
   lcd_gotoxy(0,1);
   read_program_space_string(0);
   for( ; ;){
      adc_read(&vswr_val);
      dtostrf(vswr_val, 7, 4, tmp);
      lcd_puts(tmp);
      _delay_ms(1000);
      lcd_gotoxy(strlen_P((PGM_P) pgm_read_word(&(messages[0]))), 1);
   }
   return 0;
}


/*Function to read strings from Program Space to Data Space*/
void read_program_space_string(uint8_t index){
   char buffer_str[BUFFER];

   strcpy_P(buffer_str, (PGM_P) pgm_read_word(&(messages[index])));
   lcd_puts(buffer_str);
}
