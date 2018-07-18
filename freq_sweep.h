#define SWEEP_STA_OFF   0
#define SWEEP_STA_UP    2
#define SWEEP_STA_DOWN  1

extern volatile uint8_t sweep_sta;
extern volatile uint64_t current_freq_value;

void freq_sweep(void);
