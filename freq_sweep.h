#define FREQ_SWEEP_OFF  0
#define FREQ_SWEEP_ON   1

extern volatile uint8_t sweep_dir;
extern volatile uint8_t freq_sweep_flag;

void interrupt_setup(void);
void freq_sweep(uint64_t* current_freq_value);
