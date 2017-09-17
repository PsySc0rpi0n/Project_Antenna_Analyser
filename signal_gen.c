#include <avr/io.h>
#include <inttypes.h>

#include "signal_gen.h"

#define RST_PIN   PC3 // Reset pin      -- AD9850 <----> AtMega328
#define DATA_PIN  PC2 // Data pin       -- AD9850 <----> AtMega328
#define FQ_UD_PIN PD4 // Freq_up pin    -- AD9850 <----> AtMega328
#define W_CLK_PIN PD5 // Word Clock pin -- AD9850 <----> AtMega328

void pulse_high(uint8_t pin){
   PORTD |= _BV(pin);
   PORTD &= ~_BV(pin);
}

void send_byte(uint8_t byte){
   for(uint8_t i = 0; i < 8; i++, byte >>= 1){
      if( !(byte & 0x01) )
         PORTD &= ~_BV(DATA_PIN);
      else
         PORTD |= _BV(DATA_PIN);
      pulse_high(W_CLK_PIN);
   }
}

void freq_send(uint64_t frequency){
   uint32_t freq = (frequency * 4294967296) / (uint64_t)125E6;
   for(uint8_t j = 0; j < 4; j++, freq >>= 8){
      send_byte(freq & 0xff);
   }
   send_byte(0x0000);
   pulse_high(FQ_UD_PIN);
}

void ad9850_setup(void){
   pulse_high(RST_PIN);
   pulse_high(W_CLK_PIN);
   pulse_high(FQ_UD_PIN);
}
