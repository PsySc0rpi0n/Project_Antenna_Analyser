#define FREQ_SWEEP_OFF  0
#define FREQ_SWEEP_ON   1

volatile uint8_t sweep_dir;
volatile uint8_t freq_sweep_flag = FREQ_SWEEP_OFF;

void interrupt_setup(void);
void freq_sweep(uint64_t* current_freq_value);
