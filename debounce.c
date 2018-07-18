#include <avr/interrupt.h>
#include <avr/io.h>

#include "debounce.h"

#define KEY_INPUT    PIND

volatile uint8_t key_state = 0;
volatile uint8_t key_press = 0;

uint8_t get_key_press(uint8_t key_mask){
   cli();
   key_mask &= key_press;              //read key(s)
   key_press ^= key_mask;              //clear key(s)
   sei();

   return key_mask;
}

void timer_intr_setup(void){
   TCCR0B = (1 << CS02);                 //Prescaler 256
   TIMSK0 = (1 << TOIE0);                //enable timer interrupt
}

ISR (TIMER0_OVF_vect){
   static uint8_t ct0, ct1;
   uint8_t i;

   i = key_state ^ ~KEY_INPUT;         //key changed ?
   ct0 = ~(ct0 & i);                   //reset or count ct0
   ct1 = ct0 ^ (ct1 & i);              //reset or count ct1
   i &= ct0 & ct1;                     //count until roll over
   key_state ^= i;                     //thne toggle debounced state
   //now debounce is finished
   key_press |= key_state & i;         //0->1 key press detect
}
