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

#define BUFFER 64

void write_to_lcd_from_program_space_string(uint8_t index);
void print_updated_freq_and_units(uint8_t ret, uint64_t *freq);
uint8_t freq_step_down(uint64_t freq_value);


const char msg_vswr_value[]    PROGMEM = "VSWR:";
const char msg_vswr_analyser[] PROGMEM = "VSWR annalyser";
const char msg_vswr_unit[]     PROGMEM = " Volt";
const char msg_vswr_freq[]     PROGMEM = "DDS Freq:";
const char msg_dds_freq_Khz[]  PROGMEM = " Khz";
const char msg_dds_freq_Mhz[]  PROGMEM = " Mhz";
const char msg_unkown_error[]  PROGMEM = "Unkown Error :-(";
const PGM_P const messages[]   PROGMEM = {
                                          msg_vswr_value,
                                          msg_vswr_analyser,
                                          msg_vswr_unit,
                                          msg_vswr_freq,
                                          msg_dds_freq_Khz,
                                          msg_dds_freq_Mhz,
                                          msg_unkown_error
                                       };

int main(void){
   float vswr_val = 0;
   char tmp[BUFFER];
   uint64_t initial_freq_value = 20e6,
            *current_freq_value  = &initial_freq_value;


   lcd_init(LCD_DISP_ON);
   lcd_clrscr();
   adc_setup();
   ad9850_setup();


   interrupt_setup();

   freq_send(initial_freq_value);

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

   //Write "DDS Freq" to LCD correct position
   lcd_gotoxy(0, 2);
   write_to_lcd_from_program_space_string(3);
   _delay_ms(100);


   for( ; ;){
      if(sweep_sta != SWEEP_STA_OFF){
         freq_sweep(current_freq_value);
      }

      _delay_ms(1000);

      adc_read(&vswr_val);
      dtostrf(vswr_val, 5, 2, tmp);
      lcd_gotoxy(5, 1);
      lcd_puts(tmp);

      print_updated_freq_and_units(freq_step_down(*current_freq_value), current_freq_value);
   }
   return 0;
}


/*Function to read strings from Program Space to Data Space*/
void write_to_lcd_from_program_space_string(uint8_t index){
   char buffer_str[BUFFER];

   strcpy_P(buffer_str, (PGM_P) pgm_read_word(&(messages[index])));
   lcd_puts(buffer_str);
}

uint8_t freq_step_down(uint64_t freq_value){

   if(freq_value >= 1 && freq_value <= 9e5)
      return 0; // freq / 1e3 - Khz
   if(freq_value > 9e5 && freq_value <= 39e6)
      return 1; // freq / 1e6 - Mhz
   return -1;
}

void print_updated_freq_and_units(uint8_t ret, uint64_t *freq){
   char tmp[BUFFER];
   switch(ret){
      case 0:  dtostrf(*freq / 1e3, 5, 1, tmp);
               lcd_gotoxy(9, 2);
               lcd_puts(tmp);
               lcd_gotoxy(14, 2);
               write_to_lcd_from_program_space_string(4);
               break;
      case 1:  dtostrf(*freq / 1e6, 5, 2, tmp);
               lcd_gotoxy(9, 2);
               lcd_puts(tmp);
               lcd_gotoxy(14, 2);
               write_to_lcd_from_program_space_string(5);
               break;
      default: lcd_clrscr();
               write_to_lcd_from_program_space_string(6);

   }
}
