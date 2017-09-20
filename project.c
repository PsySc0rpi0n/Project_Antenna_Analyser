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
                                          msg_vswr_freq,
                                          msg_dds_freq
                                       };

int main(void){
   float vswr_val = 0;
   char tmp[BUFFER];
   uint64_t inital_freq_value = 1e5,
            current_freq_value  = inital_freq_value;

   DDRC &= ~(1 << OAF_OUT); // Set ADC0 as input
   DDRC &= ~(1 << OAR_OUT); // Set ADC1 as input

   // Set AD9850 pins as output
   DDRC |= (1 << PC5) | (1 << PC4) | (1 << PC3) | (1 << PC2);

   lcd_init(LCD_DISP_ON);
   lcd_clrscr();
   adc_setup();
   ad9850_setup();
   interrupt_setup();

   freq_send(inital_freq_value);

   //Write "VSWR annalyser" to LCD correct position
   lcd_gotoxy(3, 0);
   write_to_lcd_from_program_space_string(1);
   _delay_ms(100);

   //Write "VSWR:" to LCD correct position
   lcd_gotoxy(0, 1);
   write_to_lcd_from_program_space_string(0);
   _delay_ms(100);

   //Write " Volt" to LCD correct position
   lcd_gotoxy(14, 1);
   write_to_lcd_from_program_space_string(2);
   _delay_ms(100);

   //Write "DDS Frew" to LCD correct position
   lcd_gotoxy(0, 2);
   write_to_lcd_from_program_space_string(3);
   _delay_ms(100);

   //Write " Khz" to LCD correct position
   lcd_gotoxy(16, 2);
   write_to_lcd_from_program_space_string(4);
   _delay_ms(100);

   for( ; ;){
      if(sweep_sta != SWEEP_STA_OFF){
         freq_sweep(&current_freq_value);
         lcd_gotoxy(0, 3);              // For debug
         lcd_puts("Sweep_dir:");        // For debug
         lcd_gotoxy(10, 3);             // For debug
         dtostrf(sweep_dir, 1, 0, tmp); // For debug
         lcd_puts(tmp);                 // For debug
         _delay_ms(1000);
      }

      _delay_ms(1);
      adc_read(&vswr_val);
      dtostrf(vswr_val, 2, 2, tmp);
      lcd_gotoxy(5, 1);
      lcd_puts(tmp);

      _delay_ms(100);

      dtostrf(current_freq_value, 3, 0, tmp);
      lcd_gotoxy(9, 2);
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
