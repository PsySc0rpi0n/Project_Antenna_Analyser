#include <avr/io.h>
#include <inttypes.h>

#include "adc.h"

#define OA1_OUT   PC0 // OpAmp 1 Output read
#define OA2_OUT   PC1 // OpAmp 2 Output read

#define ADC_VOLTAGE_REFERENCE 5.22

#define NUM_ADC_READS 200.0

/*
 *Funtion that sets uo the ADC with the required congifurations
*/
void adc_setup(void){

   // Define the prescaler to 128 so that the ADC input frequency is set to 125Khz, a value \
      between 50Khz and 200Khz according to the datasshet, 24.4, page 240
   ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);

   // Set the ADC voltage reference as AVCC with an external cap at AVREF according to the  \
      24.9.1, page 248
   ADMUX |= (1 << REFS0);

   //Set ADC as Single Conversion mode
   PRR &= ~(1 << PRADC);

   // Set right adjust ADC result to allow 10 bit full resolution.
   ADMUX &= ~(1 << ADLAR);
}


/*
 * function that starts the reading and conversion of the ADC readed values
*/
void adc_start(uint8_t adc_ch){
   //Set the channel to read values from
   ADMUX |= (1 << adc_ch);

   // Enable ADC to start reading values
   ADCSRA |= (1 << ADEN);

   // Start the A2D conversion
   ADCSRA |= (1 << ADSC);
}


float adc_read(float *vswr_val){
   uint8_t forward[NUM_ADC_READS] = {0}, reverse[NUM_ADC_READS] = {0};
   float forward_avg = 0.0, reverser_avg = 0.0;

   // Read NUM_ADC_READS times both ADC0 and ADC1 channels and store them
   for(uint8_t i = 0; i < NUM_ADC_READS; i++){
      //Read forward value
      adc_read(OA1_OUT);
      while(ADCSC);
      forward[i] = ADC;

      //Read reverse value
      adc_read(OA2_OUT);
      while(ADCSC);
      reverse[i] = ADC;
   }

   // Evaluate average value for forward and reverse
   for(uint8_t i = 0; i < NUM_ADC_READS; i++){
      forward_avg += forward[i];
      reverser_avg += reverse[i];
   }
   forward_avg /= NUM_ADC_READS;
   reverser_avg /= NUM_ADC_READS;

   // Convert to voltage value
   forward_avg *= (ADC_VOLTAGE_REFERENCE / 1024);
   reverse_avg *= (ADC_VOLTAGE_REFERENCE / 1024);

   //Evaluate VSWR value
   *vswr_val = forward_avg - reverse_avg;
}
