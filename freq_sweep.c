#include <avr/interrupt.h>
#include <avr/io.h>
#include <util/delay.h>

#include "signal_gen.h"
#include "freq_sweep.h"

#define FREQ_MAX     39e6
#define FREQ_MIN    100e3
#define FREQ_STEP   100e3

volatile uint8_t sweep_sta = SWEEP_STA_OFF;

void interrupt_setup(void){
      //http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf
      Set interrupts to trigger on rising edges edges, according to the datasshet, page 91, section 17.2.1
      EICRA |= (1 << ISC11) | (1 << ISC10) | (1 << ISC01) | (1 << ISC00); // for INT1 and INT0

      //Activate INT1 and INT0, according to the datasshet, page 72, section 13.2.2
      EIMSK |= (1 << INT1) | (1 << INT0);

      //Activate global interrupt flag
      sei();
}

/*
 *Function that sweeps frequency whan INT0 or INT1 are triggered
 */
void freq_sweep(uint64_t* current_freq_val){

   if(sweep_sta == SWEEP_STA_UP){
      if( (*current_freq_val + FREQ_STEP) > FREQ_MAX)
         *current_freq_val = FREQ_MIN;
      else
         *current_freq_val += FREQ_STEP;
   }else if(sweep_sta == SWEEP_STA_DOWN){
      if( (*current_freq_val - FREQ_STEP) < FREQ_MIN)
         *current_freq_val = FREQ_MAX;
      else
         *current_freq_val -= FREQ_STEP;
   }

   freq_send(*current_freq_val);
   sweep_sta = SWEEP_STA_OFF;
}


/*
 * ISR routines
 */
ISR(INT0_vect){
   sweep_sta = SWEEP_STA_UP;
   _delay_ms(100); // Button debouncing
}

ISR(INT1_vect){
   sweep_sta = SWEEP_STA_DOWN;
   _delay_ms(100); // Button debouncing
}
