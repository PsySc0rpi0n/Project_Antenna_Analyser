#define OAF_OUT   PC1 // OpAmp 1 Output read - Forward volatge
#define OAR_OUT   PC0 // OpAmp 2 Output read - Reverse voltage

void adc_setup(void);
void adc_start(uint8_t adc_ch);
void adc_read(float *vswr_val);
