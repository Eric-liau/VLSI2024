#include <stdint.h>

#define MIP_MEIP (1 << 11) // External interrupt pending
#define MIP_MTIP (1 << 7)  // Timer interrupt pending
#define MIP 0x344

volatile unsigned int *WDT_addr = (int *) 0x10010000;
volatile unsigned int *dma_addr_boot = (int *) 0x10020000;




void timer_interrupt_handler(void) {
  asm("csrsi mstatus, 0x0"); // MIE of mstatus
  WDT_addr[0x40] = 0; // WDT_en
  asm("j _start");
}

void external_interrupt_handler(void) {
	volatile unsigned int *dma_addr_boot = (int *) 0x10020000;
	asm("csrsi mstatus, 0x0"); // MIE of mstatus
	dma_addr_boot[0x40] = 0; // disable DMA
} 

void trap_handler(void) {
    uint32_t mip;
    asm volatile("csrr %0, %1" : "=r"(mip) : "i"(MIP));
	
    if ((mip & MIP_MTIP) >> 7) {
        timer_interrupt_handler();
    }

    if ((mip & MIP_MEIP) >> 11) {
        external_interrupt_handler();
    }
}

int main(void) {
    extern char _test_start;
    extern char _binary_image_bmp_start;
    extern char _binary_image_bmp_end;
    extern unsigned int _binary_image_bmp_size;

    for(int i=0; i<54; i++)
        (&_test_start)[i]=(&_binary_image_bmp_start)[i];

    for(int i=54;i<&_binary_image_bmp_size;i=i+3){
        int result=0;
        int b=(&_binary_image_bmp_start)[i];
        int g=(&_binary_image_bmp_start)[i+1];
        int r=(&_binary_image_bmp_start)[i+2];

        int b1 = b*11;
        int g1 = g*59;
        int r1 = r*30;
        result = (b1 + g1 + r1) / 100;

        (&_test_start)[i] = result;
        (&_test_start)[i+1] = result;
        (&_test_start)[i+2] = result;
    }
}
