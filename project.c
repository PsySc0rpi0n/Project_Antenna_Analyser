#include <avr/io.h>
#include <inttypes.h>
#include <stdlib.h>
#include <util/delay.h>
#include <string.h>
#include <avr/pgmspace.h>

#include "signal_gen.h"
#include "freq_sweep.h"
#include "adc.h"
#include "lcd.h"

#define BUFFER         64

void write_to_lcd_from_program_space_string(uint8_t index);

const char msg_vswr_value[]    PROGMEM = "VSWR:";
const char msg_vswr_analyser[] PROGMEM = "VSWR annalyser";
const char msg_vswr_unit[]     PROGMEM = " Volt";
const char msg_vswr_freq[]     PROGMEM = "DDS Freq:";
const char msg_dds_freq[]      PROGMEM = " Khz";
const PGM_P const messages[]   PROGMEM = {
                                          msg_vswr_value,
                                          msg_vswr_analyser,
                                          msg_vswr_unit,
                                          msg_vswr_freq
                                       };
volatile uint8_t freq_sweep_flag;

int main(void){
   float vswr_val = 0;
   char tmp[BUFFER];
   uint64_t inital_freq_value = 10e5,
            current_freq_value  = inital_freq_value;

   lcd_init(LCD_DISP_ON);
   lcd_clrscr();
   adc_setup();
   ad9850_setup();

   freq_send(inital_freq_value);

   //Write "VSWR annalyser" to LCD correct position
   lcd_gotoxy(3, 0);
   write_to_lcd_from_program_space_string(1);
   _delay_ms(1000);

   //Write "VSWR:" to LCD correct position
   lcd_gotoxy(0, 1);
   write_to_lcd_from_program_space_string(0);

   //Write " Volt" to LCD correct position
   lcd_gotoxy(12, 1);
   write_to_lcd_from_program_space_string(2);

   //Write "DDS Frew" to LCD correct position
   lcd_gotoxy(0, 2);
   write_to_lcd_from_program_space_string(3);

   //Write " Khz" to LCD correct position
   lcd_gotoxy(11, 2);
   write_to_lcd_from_program_space_string(4);

   for( ; ;){
      if(freq_sweep_flag)
         freq_sweep(&current_freq_value);

      _delay_ms(1);
      adc_read(&vswr_val);
      dtostrf(vswr_val, 7, 4, tmp);
      lcd_gotoxy(5, 1);
      lcd_puts(tmp);

      _delay_ms(100);

      dtostrf(current_freq_value, 6, 0, tmp);
      lcd_gotoxy(4, 2);
      lcd_puts(tmp);
   }
   return 0;
}


/*Function to read strings from Program Space to Data Space*/
void write_to_lcd_from_program_space_string(uint8_t index){
   char buffer_str[BUFFER];

   strcpy_P(buffer_str, (PGM_P) pgm_read_word(&(messages[index])));
   lcd_puts(buffer_str);
}
