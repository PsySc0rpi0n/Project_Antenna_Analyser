#include <avr/io.h>
#include <inttypes.h>

#include <util/delay.h>

#define RST_PIN   PC5 // Reset pin      -- AD9850 <----> AtMega328
#define DATA_PIN  PC4 // Data pin       -- AD9850 <----> AtMega328
#define FU_UD_PIN PC3 // Freq_up pin    -- AD9850 <----> AtMega328
#define W_CLK_PIN PC2 // Word Clock pin -- AD9850 <----> AtMega328

void pulse_high(uint8_t pin){
   PORTC |= _BV(pin);
   PORTC &= ~_BV(pin);
}

void send_byte(uint8_t byte){
   for(uint8_t i = 0; i < 8; i++, byte >>= 1){
      if( !(byte & 0x01) )
         PORTC &= ~_BV(DATA_PIN);
      else
         PORTC |= _BV(DATA_PIN);
      pulse_high(W_CLK_PIN);
   }
}

void freq_send(uint64_t frequency){
   uint32_t freq = (frequency * 4294967296) / (uint64_t)125E6;
   for(uint8_t j = 0; j < 4; j++, freq >>= 8){
      send_byte(freq & 0xff);
   }
   send_byte(0x0000);
   pulse_high(FU_UD_PIN);
}

void ad9850_setup(void){
   // Set AD9850 pins as output
   DDRC |= (1 << RST_PIN) | (1 << DATA_PIN) | (1 << FU_UD_PIN) | (1 << W_CLK_PIN);

   pulse_high(RST_PIN);
   pulse_high(W_CLK_PIN);
   pulse_high(FU_UD_PIN);
}

int main(void){

   ad9850_setup();

   for( ; ; ){
      freq_send(2e6);
      _delay_ms(3000);
      freq_send(5e6);
      _delay_ms(3000);
      freq_send(10e6);
      _delay_ms(3000);
      freq_send(39e6);
      _delay_ms(3000);
   }
   return 0;
}
