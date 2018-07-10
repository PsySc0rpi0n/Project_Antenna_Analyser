#include <avr/interrupt.h>
#include <avr/io.h>
#include <util/delay.h>

#include "signal_gen.h"
#include "freq_sweep.h"

#define FREQ_MAX     39e6
#define FREQ_MIN    100e3
#define FREQ_STEP   100e3

#define COUNT 16

volatile uint8_t sweep_sta = SWEEP_STA_OFF;

/*
 *Function that sweeps frequency when INT0 or INT1 are triggered
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


 void gpio_setup(void){
 	//PORTD = (1 << PD2) | (1 << PD3);
 	//DDRB = (1 << PB1);					//set PB1 as output
 }

 void timer_setup(void){
 	TCCR0B = (1 << CS02);
 	TIMSK0 = (1 << TOIE0);
   sei();
 }

 /*
 *ISR Routines
 */
 ISR(TIMER0_OVF_vect){

 	static uint8_t counter0 = 0, counter1 = 0;
 	uint8_t buttons = PIND;
 	uint8_t button0 = !(buttons & (1 << PD2)),
 			  button1 = !(buttons & (1 << PD3));

 	if(button0){
 		if(counter0 < COUNT){
 			counter0++;
 			if(counter0 == COUNT){
 				sweep_sta = SWEEP_STA_DOWN;
            freq_sweep(current_freq_value);
 			}
 		}
 	}

 	if(button1){
 		if(counter1 < COUNT){
 			counter1++;
 			if(counter1 == COUNT){
 				sweep_sta = SWEEP_STA_UP;
            freq_sweep(current_freq_value);
 			}
 		}
 	}
 }
