#include <avr/interrupt.h>
#include <avr/io.h>

#include "signal_gen.h"
#include "freq_sweep.h"
#include "lcd.h"

#define FREQ_MAX 39000000
#define FREQ_MIN     1000
#define FREQ_STEP  100000

volatile uint8_t sweep_dir = 2;
volatile uint8_t sweep_sta = SWEEP_STA_UNDEF;

void interrupt_setup(void){
      // Set interrupts to trigger on falling edges, according to the datasshet, page 71, section 13.2.1
      EICRA |= (1 << ISC11) | (1 << ISC01); // for INT1 and INT0

      // Activate INT1 and INT0, ccording to the datasshet, page 72, section 13.2.2
      EIMSK |= (1 << INT1) | (1 << INT0);

      // Activate global interrupt flag
      //SREG |= (1 << SREGI);
      sei();
}

/*
 *Function that sweeps frequency by external interrupt source
 */
void freq_sweep(uint64_t* current_freq_val){
   uint64_t updated_freq_val = 0;
   if(sweep_dir){
      if( (*current_freq_val + FREQ_STEP) > FREQ_MAX)
         updated_freq_val = FREQ_MIN;
      else
         updated_freq_val += FREQ_STEP;
   }else{
      if( (*current_freq_val - FREQ_STEP) < FREQ_MIN)
         updated_freq_val = FREQ_MAX;
      else
         updated_freq_val -= FREQ_STEP;
   }

   *current_freq_val = updated_freq_val;
   freq_send(updated_freq_val);
   //sweep_dir = 2;
}


/*
 * ISR routines
 */
ISR(INT0_vect){
   sweep_sta = SWEEP_STA_ON;
   sweep_dir = 0;
}

ISR(INT1_vect){
   sweep_sta = SWEEP_STA_ON;
   sweep_dir = 1;
}
