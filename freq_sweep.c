#include <avr/interrupt.h>
#include <avr/io.h>
#include <util/delay.h>

#include "signal_gen.h"
#include "freq_sweep.h"

#define FREQ_MAX     39e6
#define FREQ_MIN    100e3
#define FREQ_STEP   100e3

uint8_t sweep_sta = SWEEP_STA_OFF;

/*
 *Function that sweeps frequency when TIMER0 overflows and interrupt is triggered
 */
void freq_sweep(void){
   if(sweep_sta == SWEEP_STA_UP){
      if( (current_freq_value + FREQ_STEP) > FREQ_MAX)
         current_freq_value = FREQ_MIN;
      else
         current_freq_value += FREQ_STEP;
   }else if(sweep_sta == SWEEP_STA_DOWN){
      if( (current_freq_value - FREQ_STEP) < FREQ_MIN)
         current_freq_value = FREQ_MAX;
      else
         current_freq_value -= FREQ_STEP;
   }

   freq_send(current_freq_value);
   sweep_sta = SWEEP_STA_OFF;
}
