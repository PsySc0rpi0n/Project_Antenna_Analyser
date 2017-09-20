#define SWEEP_STA_OFF   0
#define SWEEP_STA_ON    1
#define SWEEP_STA_UNDEF 2

#define SWEEP_DIR_UP    1
#define SWEEP_DIR_DOWN  0
#define SWEEP_DIR_UNDEF 2

extern volatile uint8_t sweep_sta;

void interrupt_setup(void);
void freq_sweep(uint64_t* current_freq_value);
